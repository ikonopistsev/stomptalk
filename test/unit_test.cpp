#include <cassert>
#include <string>
#include <vector>
#include <unordered_map>
#include <iostream>

#include "stomptalk/parser.hpp"
#include "stomptalk/method.h"
#include "stomptalk/header.h"

struct ParsedFrame {
    std::uint64_t method_id = 0;
    std::string method_name;
    std::unordered_map<std::uint64_t, std::string> headers;
    std::unordered_map<std::string, std::string> header_names;
    std::string body;
    bool completed = false;
};

class TestHook : public stomptalk::hook_base {
private:
    std::vector<ParsedFrame>& frames_;
    ParsedFrame* current_frame_ = nullptr;
    std::string current_header_key_;

public:
    explicit TestHook(std::vector<ParsedFrame>& frames) : frames_(frames) {}

    void on_frame(stomptalk::parser_hook&, const char*) noexcept override {
        frames_.emplace_back();
        current_frame_ = &frames_.back();
    }

    void on_method(stomptalk::parser_hook&, std::uint64_t method_id, 
                   const char* ptr, std::size_t len) noexcept override {
        if (current_frame_) {
            current_frame_->method_id = method_id;
            current_frame_->method_name.assign(ptr, len);
        }
    }

    void on_hdr_key(stomptalk::parser_hook&, std::uint64_t header_id, 
                    const char* ptr, std::size_t len) noexcept override {
        if (current_frame_) {
            current_header_key_.assign(ptr, len);
            
            // Проверяем что header_id соответствует ожидаемому значению из header.h
            std::uint64_t expected_id = get_header_id_by_name(current_header_key_);
            if (expected_id != st_header_none && expected_id != header_id) {
                std::cerr << "Header ID mismatch for '" << current_header_key_ 
                          << "': expected " << expected_id 
                          << ", got " << header_id << std::endl;
                assert(false && "Header ID mismatch");
            }
        }
    }

    void on_hdr_val(stomptalk::parser_hook&, const char* ptr, std::size_t len) noexcept override {
        if (current_frame_ && !current_header_key_.empty()) {
            std::string value(ptr, len);
            
            // Find header ID by name
            std::uint64_t header_id = get_header_id_by_name(current_header_key_);
            
            current_frame_->headers[header_id] = value;
            current_frame_->header_names[current_header_key_] = value;
            current_header_key_.clear();
        }
    }

    void on_body(stomptalk::parser_hook&, const void* ptr, std::size_t size) noexcept override {
        if (current_frame_) {
            current_frame_->body.append(static_cast<const char*>(ptr), size);
        }
    }

    void on_frame_end(stomptalk::parser_hook&, const char*) noexcept override {
        if (current_frame_) {
            current_frame_->completed = true;
            current_frame_ = nullptr;
        }
    }

private:
    std::uint64_t get_header_id_by_name(const std::string& name) {
        static const std::unordered_map<std::string, std::uint64_t> header_map = {
            {"accept-version", st_header_accept_version},
            {"ack", st_header_ack},
            {"content-length", st_header_content_length},
            {"content-type", st_header_content_type},
            {"destination", st_header_destination},
            {"heart-beat", st_header_heart_beat},
            {"host", st_header_host},
            {"id", st_header_id},
            {"login", st_header_login},
            {"message", st_header_message},
            {"message-id", st_header_message_id},
            {"passcode", st_header_passcode},
            {"receipt", st_header_receipt},
            {"receipt-id", st_header_receipt_id},
            {"server", st_header_server},
            {"session", st_header_session},
            {"subscription", st_header_subscription},
            {"timestamp", st_header_timestamp},
            {"transaction", st_header_transaction},
            {"version", st_header_version}
        };
        
        auto it = header_map.find(name);
        return (it != header_map.end()) ? it->second : st_header_none;
    }
};

void test_connect_frame() {
    std::cout << "Testing CONNECT frame..." << std::endl;
    
    const char* data = 
        "CONNECT\r\n"
        "accept-version:1.0,1.1,1.2\r\n"
        "host:stomp.github.org\r\n"
        "login:guest\r\n"
        "passcode:guest\r\n"
        "\r\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data);
    parser.run(hook, data, size);

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    
    assert(frame.completed);
    assert(frame.method_id == st_method_connect);
    assert(frame.method_name == "CONNECT");
    
    // Required headers for CONNECT
    assert(frame.header_names.count("accept-version"));
    assert(frame.header_names.count("host"));
    assert(frame.header_names.at("accept-version") == "1.0,1.1,1.2");
    assert(frame.header_names.at("host") == "stomp.github.org");
    assert(frame.header_names.at("login") == "guest");
    assert(frame.header_names.at("passcode") == "guest");
    
    std::cout << "✓ CONNECT frame test passed" << std::endl;
}

void test_connected_frame() {
    std::cout << "Testing CONNECTED frame..." << std::endl;
    
    const char* data = 
        "CONNECTED\r\n"
        "version:1.2\r\n"
        "session:session-1234\r\n"
        "server:stomptalk/1.8.0\r\n"
        "heart-beat:10000,10000\r\n"
        "\r\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data);
    parser.run(hook, data, size);

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    
    assert(frame.completed);
    assert(frame.method_id == st_method_connected);
    assert(frame.method_name == "CONNECTED");
    
    // Required headers for CONNECTED
    assert(frame.header_names.count("version"));
    assert(frame.header_names.at("version") == "1.2");
    
    std::cout << "✓ CONNECTED frame test passed" << std::endl;
}

void test_send_frame() {
    std::cout << "Testing SEND frame..." << std::endl;
    
    const char* data = 
        "SEND\r\n"
        "destination:/queue/test\r\n"
        "content-type:text/plain\r\n"
        "content-length:11\r\n"
        "\r\n"
        "hello world\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data) + 11; // include body length
    parser.run(hook, data, size);

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    
    assert(frame.completed);
    assert(frame.method_id == st_method_send);
    assert(frame.method_name == "SEND");
    
    // Required headers for SEND
    assert(frame.header_names.count("destination"));
    assert(frame.header_names.at("destination") == "/queue/test");
    assert(frame.header_names.at("content-type") == "text/plain");
    assert(frame.header_names.at("content-length") == "11");
    
    assert(frame.body == "hello world");
    
    std::cout << "✓ SEND frame test passed" << std::endl;
}

void test_subscribe_frame() {
    std::cout << "Testing SUBSCRIBE frame..." << std::endl;
    
    const char* data = 
        "SUBSCRIBE\r\n"
        "id:sub-1\r\n"
        "destination:/queue/test\r\n"
        "ack:client\r\n"
        "\r\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data);
    parser.run(hook, data, size);

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    
    assert(frame.completed);
    assert(frame.method_id == st_method_subscribe);
    assert(frame.method_name == "SUBSCRIBE");
    
    // Required headers for SUBSCRIBE
    assert(frame.header_names.count("id"));
    assert(frame.header_names.count("destination"));
    assert(frame.header_names.at("id") == "sub-1");
    assert(frame.header_names.at("destination") == "/queue/test");
    assert(frame.header_names.at("ack") == "client");
    
    std::cout << "✓ SUBSCRIBE frame test passed" << std::endl;
}

void test_message_frame() {
    std::cout << "Testing MESSAGE frame..." << std::endl;
    
    const char* data = 
        "MESSAGE\r\n"
        "subscription:sub-1\r\n"
        "message-id:msg-1234\r\n"
        "destination:/queue/test\r\n"
        "content-length:13\r\n"
        "\r\n"
        "Hello, World!\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data) + 13; // include body
    parser.run(hook, data, size);

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    
    assert(frame.completed);
    assert(frame.method_id == st_method_message);
    assert(frame.method_name == "MESSAGE");
    
    // Required headers for MESSAGE
    assert(frame.header_names.count("subscription"));
    assert(frame.header_names.count("message-id"));
    assert(frame.header_names.count("destination"));
    assert(frame.header_names.at("subscription") == "sub-1");
    assert(frame.header_names.at("message-id") == "msg-1234");
    assert(frame.header_names.at("destination") == "/queue/test");
    
    assert(frame.body == "Hello, World!");
    
    std::cout << "✓ MESSAGE frame test passed" << std::endl;
}

void test_ack_frame() {
    std::cout << "Testing ACK frame..." << std::endl;
    
    const char* data = 
        "ACK\r\n"
        "id:msg-1234\r\n"
        "transaction:tx1\r\n"
        "\r\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data);
    parser.run(hook, data, size);

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    
    assert(frame.completed);
    assert(frame.method_id == st_method_ack);
    assert(frame.method_name == "ACK");
    
    // Required headers for ACK
    assert(frame.header_names.count("id"));
    assert(frame.header_names.at("id") == "msg-1234");
    assert(frame.header_names.at("transaction") == "tx1");
    
    std::cout << "✓ ACK frame test passed" << std::endl;
}

void test_disconnect_frame() {
    std::cout << "Testing DISCONNECT frame..." << std::endl;
    
    const char* data = 
        "DISCONNECT\r\n"
        "receipt:disconnect-1\r\n"
        "\r\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data);
    parser.run(hook, data, size);

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    
    assert(frame.completed);
    assert(frame.method_id == st_method_disconnect);
    assert(frame.method_name == "DISCONNECT");
    
    // Optional receipt header
    assert(frame.header_names.count("receipt"));
    assert(frame.header_names.at("receipt") == "disconnect-1");
    
    std::cout << "✓ DISCONNECT frame test passed" << std::endl;
}

void test_error_frame() {
    std::cout << "Testing ERROR frame..." << std::endl;
    
    const char* data = 
        "ERROR\r\n"
        "message:Invalid destination\r\n"
        "content-length:20\r\n"
        "\r\n"
        "Destination not found\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data) + 20; // include body
    parser.run(hook, data, size);

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    
    assert(frame.completed);
    assert(frame.method_id == st_method_error);
    assert(frame.method_name == "ERROR");
    
    // ERROR frame headers
    assert(frame.header_names.count("message"));
    assert(frame.header_names.at("message") == "Invalid destination");
    assert(frame.body == "Destination not found");
    
    std::cout << "✓ ERROR frame test passed" << std::endl;
}

void test_frames_with_lf_delimiters() {
    std::cout << "Testing frames with LF delimiters..." << std::endl;
    
    const char* data = 
        "CONNECT\n"
        "accept-version:1.2\n"
        "host:localhost\n"
        "\n\0"
        "SEND\n"
        "destination:/queue/test\n"
        "content-type:text/plain\n"
        "\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data);
    parser.run(hook, data, size);

    assert(frames.size() == 2);
    
    // First frame - CONNECT with LF
    const auto& connect_frame = frames[0];
    assert(connect_frame.completed);
    assert(connect_frame.method_id == st_method_connect);
    assert(connect_frame.method_name == "CONNECT");
    assert(connect_frame.header_names.count("accept-version"));
    assert(connect_frame.header_names.at("accept-version") == "1.2");
    
    // Second frame - SEND with LF
    const auto& send_frame = frames[1];
    assert(send_frame.completed);
    assert(send_frame.method_id == st_method_send);
    assert(send_frame.method_name == "SEND");
    assert(send_frame.header_names.count("destination"));
    assert(send_frame.header_names.at("destination") == "/queue/test");
    
    std::cout << "✓ LF delimiters test passed" << std::endl;
}

void test_message_without_content_length() {
    std::cout << "Testing MESSAGE without content-length..." << std::endl;
    
    const char* data = 
        "MESSAGE\r\n"
        "subscription:sub-1\r\n"
        "message-id:msg-5678\r\n"
        "destination:/topic/news\r\n"
        "content-type:application/json\r\n"
        "\r\n"
        "{\"event\":\"update\",\"data\":42}\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data) + strlen("{\"event\":\"update\",\"data\":42}");
    parser.run(hook, data, size);

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    
    assert(frame.completed);
    assert(frame.method_id == st_method_message);
    assert(frame.method_name == "MESSAGE");
    
    // Required headers for MESSAGE
    assert(frame.header_names.count("subscription"));
    assert(frame.header_names.count("message-id"));
    assert(frame.header_names.count("destination"));
    assert(frame.header_names.at("subscription") == "sub-1");
    assert(frame.header_names.at("message-id") == "msg-5678");
    assert(frame.header_names.at("destination") == "/topic/news");
    
    // Body should be parsed until \0
    assert(frame.body == "{\"event\":\"update\",\"data\":42}");
    
    std::cout << "✓ MESSAGE without content-length test passed" << std::endl;
}

void test_receipt_frame() {
    std::cout << "Testing RECEIPT frame..." << std::endl;
    
    const char* data = 
        "RECEIPT\n"
        "receipt-id:message-12345\n"
        "\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data);
    parser.run(hook, data, size);

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    
    assert(frame.completed);
    assert(frame.method_id == st_method_receipt);
    assert(frame.method_name == "RECEIPT");
    
    // Required receipt-id header
    assert(frame.header_names.count("receipt-id"));
    assert(frame.header_names.at("receipt-id") == "message-12345");
    
    std::cout << "✓ RECEIPT frame test passed" << std::endl;
}

void test_heartbeat_between_frames() {
    std::cout << "Testing heartbeat (ping) between frames..." << std::endl;
    
    // Тест с \n между фреймами (heartbeat)
    const char* data = 
        "CONNECT\r\n"
        "host:localhost\r\n"
        "accept-version:1.2\r\n"
        "\r\n\0"
        "\n\n\n"  // heartbeat символы
        "SEND\r\n"
        "destination:/queue/test\r\n"
        "\r\n\0"
        "\n"      // еще один heartbeat
        "DISCONNECT\r\n"
        "\r\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data);
    parser.run(hook, data, size);

    assert(frames.size() == 3);
    
    // First frame - CONNECT (heartbeat должен быть проигнорирован)
    assert(frames[0].completed);
    assert(frames[0].method_id == st_method_connect);
    assert(frames[0].method_name == "CONNECT");
    
    // Second frame - SEND (heartbeat должен быть проигнорирован)
    assert(frames[1].completed);
    assert(frames[1].method_id == st_method_send);
    assert(frames[1].method_name == "SEND");
    
    // Third frame - DISCONNECT (heartbeat должен быть проигнорирован)
    assert(frames[2].completed);
    assert(frames[2].method_id == st_method_disconnect);
    assert(frames[2].method_name == "DISCONNECT");
    
    std::cout << "✓ Heartbeat between frames test passed" << std::endl;
}

void test_mixed_whitespace_between_frames() {
    std::cout << "Testing mixed whitespace between frames..." << std::endl;
    
    // Тест с различными whitespace символами
    const char* data = 
        "CONNECT\n"
        "host:test.com\n"
        "\n\0"
        "\r\n\r\n\0\0\n"  // смешанные whitespace и null символы
        "SEND\r\n"
        "destination:/topic/news\r\n"
        "\r\n\0"
        "\n\r\n\0"        // еще смешанные символы
        "DISCONNECT\n"
        "\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data);
    parser.run(hook, data, size);

    assert(frames.size() == 3);
    
    // Проверяем что все фреймы корректно распарсились несмотря на whitespace
    assert(frames[0].method_id == st_method_connect);
    assert(frames[0].header_names.at("host") == "test.com");
    
    assert(frames[1].method_id == st_method_send);
    assert(frames[1].header_names.at("destination") == "/topic/news");
    
    assert(frames[2].method_id == st_method_disconnect);
    
    std::cout << "✓ Mixed whitespace test passed" << std::endl;
}

void test_header_id_validation() {
    std::cout << "Testing header ID validation..." << std::endl;
    
    // Тест с различными заголовками для проверки корректности header_id
    const char* data = 
        "CONNECT\r\n"
        "accept-version:1.2\r\n"          // st_header_accept_version
        "host:stomp.example.com\r\n"      // st_header_host
        "login:testuser\r\n"              // st_header_login  
        "passcode:secret123\r\n"          // st_header_passcode
        "heart-beat:10000,10000\r\n"      // st_header_heart_beat
        "\r\n\0"
        "SEND\r\n"
        "destination:/queue/test\r\n"     // st_header_destination
        "content-type:application/json\r\n" // st_header_content_type
        "content-length:25\r\n"           // st_header_content_length
        "receipt:send-001\r\n"            // st_header_receipt
        "transaction:tx-123\r\n"          // st_header_transaction
        "\r\n"
        "{\"message\":\"hello world\"}\0"
        "MESSAGE\r\n"
        "subscription:sub-1\r\n"          // st_header_subscription
        "message-id:msg-456\r\n"          // st_header_message_id
        "destination:/topic/updates\r\n"  // st_header_destination
        "timestamp:1693737600000\r\n"     // st_header_timestamp
        "\r\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data) + 25; // include JSON body
    parser.run(hook, data, size);

    assert(frames.size() == 3);
    
    // Проверяем CONNECT фрейм
    const auto& connect_frame = frames[0];
    assert(connect_frame.method_id == st_method_connect);
    assert(connect_frame.header_names.count("accept-version"));
    assert(connect_frame.header_names.count("host"));
    assert(connect_frame.header_names.count("login"));
    assert(connect_frame.header_names.count("passcode"));
    assert(connect_frame.header_names.count("heart-beat"));
    
    // Проверяем SEND фрейм  
    const auto& send_frame = frames[1];
    assert(send_frame.method_id == st_method_send);
    assert(send_frame.header_names.count("destination"));
    assert(send_frame.header_names.count("content-type"));
    assert(send_frame.header_names.count("content-length"));
    assert(send_frame.header_names.count("receipt"));
    assert(send_frame.header_names.count("transaction"));
    assert(send_frame.body == "{\"message\":\"hello world\"}");
    
    // Проверяем MESSAGE фрейм
    const auto& message_frame = frames[2];
    assert(message_frame.method_id == st_method_message);
    assert(message_frame.header_names.count("subscription"));
    assert(message_frame.header_names.count("message-id"));
    assert(message_frame.header_names.count("destination"));
    assert(message_frame.header_names.count("timestamp"));
    
    std::cout << "✓ Header ID validation test passed" << std::endl;
}

void test_multiple_frames() {
    std::cout << "Testing multiple frames..." << std::endl;
    
    const char* data = 
        "CONNECT\r\n"
        "host:localhost\r\n"
        "accept-version:1.2\r\n"
        "\r\n\0"
        "SEND\r\n"
        "destination:/queue/test\r\n"
        "\r\n\0"
        "DISCONNECT\r\n"
        "\r\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    stomptalk::parser_hook hook(test_hook);
    stomptalk::parser parser;

    auto size = strlen(data);
    parser.run(hook, data, size);

    assert(frames.size() == 3);
    
    // First frame - CONNECT
    assert(frames[0].method_id == st_method_connect);
    assert(frames[0].method_name == "CONNECT");
    assert(frames[0].completed);
    
    // Second frame - SEND
    assert(frames[1].method_id == st_method_send);
    assert(frames[1].method_name == "SEND");
    assert(frames[1].completed);
    
    // Third frame - DISCONNECT
    assert(frames[2].method_id == st_method_disconnect);
    assert(frames[2].method_name == "DISCONNECT");
    assert(frames[2].completed);
    
    std::cout << "✓ Multiple frames test passed" << std::endl;
}

int main() {
    std::cout << "Running STOMP parser unit tests..." << std::endl << std::endl;
    
    try {
        test_connect_frame();
        test_connected_frame();
        test_send_frame();
        test_subscribe_frame();
        test_message_frame();
        test_ack_frame();
        test_disconnect_frame();
        test_error_frame();
        test_frames_with_lf_delimiters();
        test_message_without_content_length();
        test_receipt_frame();
        test_heartbeat_between_frames();
        test_mixed_whitespace_between_frames();
        test_header_id_validation();
        test_multiple_frames();
        
        std::cout << std::endl << "🎉 All tests passed!" << std::endl;
        return 0;
    } catch (const std::exception& e) {
        std::cerr << "❌ Test failed: " << e.what() << std::endl;
        return 1;
    }
}
