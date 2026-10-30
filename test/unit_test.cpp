// Проверки ниже сделаны на assert, и они должны работать и в Release.
#undef NDEBUG
#include <algorithm>
#include <cassert>
#include <cstring>
#include <string>
#include <vector>
#include <unordered_map>
#include <iostream>

#include "stomptalk/parser.hpp"
#include "stomptalk/method.hpp"

struct ParsedFrame {
    stomptalk_method method_id = st_method_unknown;
    std::string method_name;
    std::unordered_map<std::string, std::string> header_names;
    std::string body;
    bool completed = false;
};

class TestHook {
private:
    std::vector<ParsedFrame>& frames_;
    ParsedFrame* current_frame_ = nullptr;
    std::string current_header_key_;

public:
    using hook_type = stomptalk::parser_hook<TestHook>;

    explicit TestHook(std::vector<ParsedFrame>& frames) : frames_(frames) {}

    void on_frame(hook_type&, const char*) noexcept {
        frames_.emplace_back();
        current_frame_ = &frames_.back();
    }

    void on_method(hook_type&, const char* ptr, std::size_t len) noexcept {
        if (current_frame_) {
            current_frame_->method_id = stomptalk::method_from(ptr, len);
            current_frame_->method_name.assign(ptr, len);
        }
    }

    void on_hdr_key(hook_type&, const char* ptr, std::size_t len) noexcept {
        if (current_frame_)
            current_header_key_.assign(ptr, len);
    }

    void on_hdr_val(hook_type&, const char* ptr, std::size_t len) noexcept {
        if (current_frame_ && !current_header_key_.empty()) {
            current_frame_->header_names[current_header_key_].assign(ptr, len);
            current_header_key_.clear();
        }
    }

    void on_body(hook_type&, const void* ptr, std::size_t size) noexcept {
        if (current_frame_) {
            current_frame_->body.append(static_cast<const char*>(ptr), size);
        }
    }

    void on_frame_end(hook_type&, const char*) noexcept {
        if (current_frame_) {
            current_frame_->completed = true;
            current_frame_ = nullptr;
        }
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    // Включаем нулевой символ в размер данных
    auto size = strlen(data) + 1;
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;
    
    assert(frames.size() == 1);
    const auto& frame = frames[0];
    (void)frame;
    
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    auto size = strlen(data) + 1; // include null terminator
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    (void)frame;
    
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    // Для сообщения с content-length включаем весь фрейм до нулевого символа включительно
    auto size = strlen(data) + 1; 
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    (void)frame;
    
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    auto size = strlen(data) + 1; // include null terminator
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    (void)frame;
    
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    auto size = strlen(data) + 1; // include null terminator
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    (void)frame;
    
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    auto size = strlen(data) + 1; // include null terminator
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    (void)frame;
    
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    auto size = strlen(data) + 1; // include null terminator
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    (void)frame;
    
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
        "content-length:21\r\n"
        "\r\n"
        "Destination not found\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    auto size = strlen(data) + 1; // include null terminator
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    (void)frame;
    
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    // Вычисляем размер вручную, так как strlen остановится на первом \0
    auto connect_part = "CONNECT\n"
                        "accept-version:1.2\n"
                        "host:localhost\n"
                        "\n\0";
    auto send_part = "SEND\n"
                     "destination:/queue/test\n"
                     "content-type:text/plain\n"
                     "\n\0";
    auto size = strlen(connect_part) + 1 + strlen(send_part) + 1;
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 2);
    
    // First frame - CONNECT with LF
    assert(frames[0].completed);
    assert(frames[0].method_id == st_method_connect);
    assert(frames[0].method_name == "CONNECT");
    assert(frames[0].header_names.count("accept-version"));
    assert(frames[0].header_names.at("accept-version") == "1.2");
    
    // Second frame - SEND with LF
    assert(frames[1].completed);
    assert(frames[1].method_id == st_method_send);
    assert(frames[1].method_name == "SEND");
    assert(frames[1].header_names.count("destination"));
    assert(frames[1].header_names.at("destination") == "/queue/test");
    
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    auto size = strlen(data) + 1; // include null terminator only
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    (void)frame;
    
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    auto size = strlen(data) + 1; // include null terminator
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    (void)frame;
    
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    // Вычисляем размер вручную для корректной обработки множественных \0
    auto connect_part = "CONNECT\r\n"
                        "host:localhost\r\n" 
                        "accept-version:1.2\r\n"
                        "\r\n\0";
    auto heartbeat_part = "\n\n\n";
    auto send_part = "SEND\r\n"
                     "destination:/queue/test\r\n"
                     "\r\n\0";
    auto heartbeat2_part = "\n";
    auto disconnect_part = "DISCONNECT\r\n"
                          "\r\n\0";
    
    auto size = strlen(connect_part) + 1 + strlen(heartbeat_part) + 
                strlen(send_part) + 1 + strlen(heartbeat2_part) + 
                strlen(disconnect_part) + 1;
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    // Вычисляем размер вручную для корректной обработки множественных \0
    auto connect_part = "CONNECT\n"
                        "host:test.com\n"
                        "\n\0";
    auto send_part = "SEND\r\n"
                     "destination:/topic/news\r\n"
                     "\r\n\0";
    auto disconnect_part = "DISCONNECT\n"
                          "\n\0";
    
    // Whitespace части содержат \0, поэтому используем фиксированные размеры
    // "\r\n\r\n\0\0\n" = 7 байт, "\n\r\n\0" = 4 байта
    auto size = strlen(connect_part) + 1 + 7 + // whitespace между CONNECT и SEND
                strlen(send_part) + 1 + 4 +   // whitespace между SEND и DISCONNECT
                strlen(disconnect_part) + 1;
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 3);
    
    // Проверяем что все фреймы корректно распарсились несмотря на whitespace
    assert(frames[0].method_id == st_method_connect);
    assert(frames[0].header_names.at("host") == "test.com");
    
    assert(frames[1].method_id == st_method_send);
    assert(frames[1].header_names.at("destination") == "/topic/news");
    
    assert(frames[2].method_id == st_method_disconnect);
    
    std::cout << "✓ Mixed whitespace test passed" << std::endl;
}

void test_many_headers() {
    std::cout << "Testing frames with many headers..." << std::endl;
    
    // Тест с различными заголовками
    const char* data = 
        "CONNECT\r\n"
        "accept-version:1.2\r\n"
        "host:stomp.example.com\r\n"
        "login:testuser\r\n"  
        "passcode:secret123\r\n"
        "heart-beat:10000,10000\r\n"
        "\r\n\0"
        "SEND\r\n"
        "destination:/queue/test\r\n"
        "content-type:application/json\r\n"
        "content-length:25\r\n"
        "receipt:send-001\r\n"
        "transaction:tx-123\r\n"
        "\r\n"
        "{\"message\":\"hello world\"}\0"
        "MESSAGE\r\n"
        "subscription:sub-1\r\n"
        "message-id:msg-456\r\n"
        "destination:/topic/updates\r\n"
        "timestamp:1693737600000\r\n"
        "\r\n\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    // Вычисляем размер вручную для корректной обработки множественных \0
    auto connect_part = "CONNECT\r\n"
                        "accept-version:1.2\r\n"
                        "host:stomp.example.com\r\n"
                        "login:testuser\r\n"
                        "passcode:secret123\r\n"
                        "heart-beat:10000,10000\r\n"
                        "\r\n\0";
    auto send_part = "SEND\r\n"
                     "destination:/queue/test\r\n"
                     "content-type:application/json\r\n"
                     "content-length:25\r\n"
                     "receipt:send-001\r\n"
                     "transaction:tx-123\r\n"
                     "\r\n"
                     "{\"message\":\"hello world\"}\0";
    auto message_part = "MESSAGE\r\n"
                        "subscription:sub-1\r\n"
                        "message-id:msg-456\r\n"
                        "destination:/topic/updates\r\n"
                        "timestamp:1693737600000\r\n"
                        "\r\n\0";
    
    auto size = strlen(connect_part) + 1 + strlen(send_part) + 1 + strlen(message_part) + 1;
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 3);
    
    // Проверяем CONNECT фрейм
    assert(frames[0].method_id == st_method_connect);
    assert(frames[0].header_names.count("accept-version"));
    assert(frames[0].header_names.count("host"));
    assert(frames[0].header_names.count("login"));
    assert(frames[0].header_names.count("passcode"));
    assert(frames[0].header_names.count("heart-beat"));
    
    // Проверяем SEND фрейм  
    assert(frames[1].method_id == st_method_send);
    assert(frames[1].header_names.count("destination"));
    assert(frames[1].header_names.count("content-type"));
    assert(frames[1].header_names.count("content-length"));
    assert(frames[1].header_names.count("receipt"));
    assert(frames[1].header_names.count("transaction"));
    assert(frames[1].body == "{\"message\":\"hello world\"}");
    
    // Проверяем MESSAGE фрейм
    assert(frames[2].method_id == st_method_message);
    assert(frames[2].header_names.count("subscription"));
    assert(frames[2].header_names.count("message-id"));
    assert(frames[2].header_names.count("destination"));
    assert(frames[2].header_names.count("timestamp"));
    
    std::cout << "✓ Many headers test passed" << std::endl;
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
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    // Вычисляем размер вручную для корректной обработки множественных \0
    auto connect_part = "CONNECT\r\n"
                        "host:localhost\r\n"
                        "accept-version:1.2\r\n"
                        "\r\n\0";
    auto send_part = "SEND\r\n"
                     "destination:/queue/test\r\n"
                     "\r\n\0";
    auto disconnect_part = "DISCONNECT\r\n"
                          "\r\n\0";
    
    auto size = strlen(connect_part) + 1 + strlen(send_part) + 1 + strlen(disconnect_part) + 1;
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

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

void test_escaped_headers() {
    std::cout << "Testing escaped characters in headers..." << std::endl;
    
    // Тест с эскейп символами в заголовках согласно STOMP спецификации
    // \r, \n, \c, \\ должны быть заэскейплены как \\r, \\n, \\c, \\\\ (экранированы)
    const char* data = 
        "SEND\r\n"
        "destination:/queue/test\\nwith\\rnewlines\r\n"
        "custom-header:value\\cwith\\\\backslash\r\n"
        "content-type:text\\nplain\r\n"
        "content-length:12\r\n"
        "\r\n"
        "Test message\0";

    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    auto size = strlen(data) + 1; // include null terminator
    auto parsed = parser.run(hook, data, size);
    
    // Парсер должен поглотить все переданные данные
    assert(parsed == size);
    (void)parsed;

    assert(frames.size() == 1);
    const auto& frame = frames[0];
    (void)frame;
    
    assert(frame.completed);
    assert(frame.method_id == st_method_send);
    assert(frame.method_name == "SEND");
    
    // Проверяем что заголовки содержат эскейп последовательности (как есть в сыром виде)
    assert(frame.header_names.count("destination"));
    assert(frame.header_names.count("custom-header"));
    assert(frame.header_names.count("content-type"));
    assert(frame.header_names.count("content-length"));
    
    // Парсер должен корректно декодировать STOMP эскейп последовательности:
    // \\n -> \n, \\r -> \r, \\c -> :, \\\\ -> \ -
    assert(frame.header_names.at("destination") == "/queue/test\nwith\rnewlines");
    assert(frame.header_names.at("custom-header") == "value:with\\backslash");
    assert(frame.header_names.at("content-type") == "text\nplain");
    assert(frame.header_names.at("content-length") == "12");
    
    assert(frame.body == "Test message");
    
    std::cout << "✓ Escaped headers test passed" << std::endl;
}

namespace {

struct RunResult {
    bool ok;
    std::size_t frames;
    std::string body;
    std::string last_key;
};

// Подаёт данные кусками по step байт и останавливается на первом rc != len.
RunResult feed(const std::string& data, std::size_t step) {
    std::vector<ParsedFrame> frames;
    TestHook test_hook(frames);
    TestHook::hook_type hook(test_hook);
    stomptalk::parser<TestHook> parser;

    bool ok = true;
    for (std::size_t off = 0; (off < data.size()) && ok; off += step) {
        auto n = (std::min)(step, data.size() - off);
        ok = (parser.run(hook, data.data() + off, n) == n);
    }

    RunResult r{ok && hook.ok(), 0, {}, {}};
    for (const auto& f : frames) {
        if (f.completed) {
            ++r.frames;
            r.body = f.body;
        }
        for (const auto& h : f.header_names)
            r.last_key = h.first;
    }
    return r;
}

void expect_error(const std::string& data) {
    for (std::size_t step : {data.size(), std::size_t{1}, std::size_t{2}, std::size_t{3}})
        assert(!feed(data, step).ok);
}

} // namespace

void test_protocol_errors() {
    std::cout << "Testing protocol errors, whole and in pieces..." << std::endl;
    using namespace std::string_literals;

    // ошибка в content-length не должна теряться, если дальше идёт другой фрейм
    expect_error("SEND\ncontent-length:x\n\n\0ACK\nid:1\n\n\0"s);
    // content-length:0 отклоняется сознательно
    expect_error("SEND\ncontent-length:0\n\n\0"s);
    // заголовок без двоеточия и пустое имя
    expect_error("SEND\nnocolon\nid:1\n\n\0"s);
    expect_error("SEND\r\nnocolon\r\n\r\n\0"s);
    expect_error("SEND\n:v\n\n\0"s);
    // после тела должен идти NUL, иначе фрейм не считается завершённым
    expect_error("SEND\ncontent-length:1\n\nab\0"s);
    for (std::size_t step : {std::size_t{1}, std::size_t{100}})
        assert(feed("SEND\ncontent-length:1\n\nab\0"s, step).frames == 0);

    std::cout << "✓ Protocol errors test passed" << std::endl;
}

void test_body_starting_with_nul() {
    std::cout << "Testing a sized body starting with NUL..." << std::endl;
    using namespace std::string_literals;

    const auto data = "SEND\ncontent-length:3\n\n\0ab\0"s;
    for (std::size_t step : {data.size(), std::size_t{1}, std::size_t{2}}) {
        auto r = feed(data, step);
        assert(r.ok && (r.frames == 1) && (r.body == "\0ab"s));
    }

    std::cout << "✓ Sized body starting with NUL test passed" << std::endl;
}

void test_connect_headers_are_raw() {
    std::cout << "Testing unescaped CONNECT and CONNECTED headers..." << std::endl;
    using namespace std::string_literals;

    for (std::size_t step : {std::size_t{1}, std::size_t{100}}) {
        assert(feed("CONNECT\nlogin:a\\b\n\n\0"s, step).ok);
        assert(feed("CONNECTED\nser\\ver:x\\t\n\n\0"s, step).ok);
        assert(feed("CONNECT\n\\key:x\n\n\0"s, step).last_key == "\\key");
        // остальные фреймы по-прежнему экранируются
        assert(!feed("SEND\nlogin:a\\b\n\n\0"s, step).ok);
    }

    std::cout << "✓ Raw CONNECT headers test passed" << std::endl;
}

void test_key_starting_with_escape() {
    std::cout << "Testing a header name starting with an escape..." << std::endl;
    using namespace std::string_literals;

    for (std::size_t step : {std::size_t{1}, std::size_t{100}})
        assert(feed("SEND\n\\cfoo:v\n\n\0"s, step).last_key == ":foo");

    std::cout << "✓ Header name starting with an escape test passed" << std::endl;
}

namespace {

struct frame_counter
{
    using hook_type = stomptalk::parser_hook<frame_counter>;

    std::size_t frames{};
    std::size_t headers{};

    void on_frame(hook_type&, const char*) noexcept {}
    void on_method(hook_type&, const char*, std::size_t) noexcept {}
    void on_hdr_key(hook_type&, const char*, std::size_t) noexcept { ++headers; }
    void on_hdr_val(hook_type&, const char*, std::size_t) noexcept {}
    void on_body(hook_type&, const void*, std::size_t) noexcept {}
    void on_frame_end(hook_type&, const char*) noexcept { ++frames; }
};

frame_counter parse_with_counter(const std::string& data) {
    frame_counter counter;
    frame_counter::hook_type hook(counter);
    stomptalk::parser<frame_counter> parser;
    assert(parser.run(hook, data.data(), data.size()) == data.size());
    return counter;
}

} // namespace

// Один вызов не должен наращивать стек на каждый фрейм и заголовок, в том числе без оптимизации.
void test_huge_buffer_uses_bounded_stack() {
    std::cout << "Testing a huge buffer in one call..." << std::endl;
    using namespace std::string_literals;

    std::string frames;
    for (int i = 0; i < 4000000; ++i)
        frames += "ACK\n\n\0"s;
    assert(parse_with_counter(frames).frames == 4000000);

    std::string headers = "SEND\n";
    for (int i = 0; i < 4000000; ++i)
        headers += "a:b\n";
    headers += "\n\0"s;
    auto counted = parse_with_counter(headers);
    assert((counted.frames == 1) && (counted.headers == 4000000));

    std::cout << "✓ Huge buffer test passed" << std::endl;
}

void test_stackbuf_counts_elements() {
    std::cout << "Testing stackbuf with elements wider than a byte..." << std::endl;

    stomptalk::stackbuf<int, 8> wide;
    const int values[] = {1, 2, 3};
    assert(wide.push(values, 3));
    auto kept = wide.pop();
    assert((kept.second == 3) && (kept.first[0] == 1) && (kept.first[1] == 2) && (kept.first[2] == 3));
    (void)kept;

    const int too_many[9] = {};
    assert(!wide.push(too_many, 9));

    stomptalk::stackbuf<char, 4> narrow;
    assert(narrow.push("abcd", 4));
    assert(!narrow.push("x", 1));

    std::cout << "✓ stackbuf test passed" << std::endl;
}

void test_method_from() {
    std::cout << "Testing method_from..." << std::endl;

    for (int m = st_method_abort; m <= st_method_unsubscribe; ++m) {
        auto method = static_cast<stomptalk_method>(m);
        auto name = stomptalk::method_name(method);
        assert(stomptalk::method_from(name, std::strlen(name)) == method);
        assert(stomptalk_method_from(stomptalk_method_str(method), std::strlen(name)) == method);
    }

    const std::string bad[] = {"", "A", "AC", "ACKK", "CONNEC", "CONNECTE", "CONNECTEDX",
        "COMMAND", "SEN", "SEND2", "SENT", "send", "abort", "FOO", "XXX", "S\xff\xff",
        "\xff\xff\xff", "MESSAGES", "DISCONNEC", "UNSUBSCRIBED", "SUBSCRIBEX", "STOP"};
    for (const auto& text : bad)
        assert(stomptalk::method_from(text.data(), text.size()) == st_method_unknown);

    assert(std::strcmp(stomptalk_method_str(st_method_unknown), "unknown") == 0);

    std::cout << "✓ method_from test passed" << std::endl;
}

void test_content_length_is_recognized_by_name() {
    std::cout << "Testing content-length recognition..." << std::endl;
    using namespace std::string_literals;

    for (std::size_t step : {std::size_t{1}, std::size_t{100}}) {
        // действует первый
        auto r = feed("SEND\ncontent-length:3\ncontent-length:9\n\na\0b\0"s, step);
        assert(r.ok && (r.frames == 1) && (r.body == "a\0b"s));
        // другое имя того же размера длину не задаёт
        r = feed("SEND\ncontent-lengtx:3\n\na\0b\0"s, step);
        assert(!r.ok);
        // имя в другом регистре это другое имя
        r = feed("SEND\nContent-Length:3\n\nabc\0"s, step);
        assert(r.ok && (r.body == "abc"));
    }

    std::cout << "✓ content-length recognition test passed" << std::endl;
}

int callback_result_on_frame(stomptalk_parser*, const char*) { return 1; }
int callback_result_on_frame_end(stomptalk_parser*, const char*) { return 1; }

void test_every_callback_can_stop_parsing() {
    std::cout << "Testing callbacks that stop parsing..." << std::endl;

    const char data[] = "ACK\nid:1\n\n\0ACK\nid:2\n\n\0";
    for (int which = 0; which < 2; ++which) {
        stomptalk_parser_hook h{};
        if (which == 0)
            h.on_frame = callback_result_on_frame;
        else
            h.on_frame_end = callback_result_on_frame_end;

        auto parser = stomptalk_parser_new();
        stomptalk_set_hook(parser, &h, nullptr);
        auto rc = stomptalk_parser_execute(parser, data, sizeof(data) - 1);
        assert(rc != sizeof(data) - 1);
        assert(stomptalk_get_error(parser) == stomptalk_error_generic);
        (void)rc;
        stomptalk_parser_free(parser);
    }

    std::cout << "✓ Stopping callbacks test passed" << std::endl;
}

void test_antoll() {
    std::cout << "Testing stomptalk_antoll..." << std::endl;

    std::int64_t v = 7;
    assert(stomptalk_antoll(&v, "abc", 3) == 0);
    assert(stomptalk_antoll(&v, "-", 1) == 0);
    assert(v == 7);
    assert((stomptalk_antoll(&v, "0", 1) == 1) && (v == 0));
    assert((stomptalk_antoll(&v, "-42", 3) == 1) && (v == -42));
    assert((stomptalk_antoll(&v, "42", 2) == 1) && (v == 42));

    std::cout << "✓ stomptalk_antoll test passed" << std::endl;
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
        test_many_headers();
        test_multiple_frames();
        test_protocol_errors();
        test_body_starting_with_nul();
        test_connect_headers_are_raw();
        test_key_starting_with_escape();
        test_huge_buffer_uses_bounded_stack();
        test_every_callback_can_stop_parsing();
        test_antoll();
        test_stackbuf_counts_elements();
        test_method_from();
        test_content_length_is_recognized_by_name();
        test_escaped_headers();
        
        std::cout << std::endl << "🎉 All tests passed!" << std::endl;
        return 0;
    } catch (const std::exception& e) {
        std::cerr << "❌ Test failed: " << e.what() << std::endl;
        return 1;
    }
}
