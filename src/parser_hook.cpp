#include "stomptalk/parser_hook.hpp"
#include <iterator>
#include <cassert>
#include <iostream>

namespace stomptalk {

parser_hook::~parser_hook() noexcept
{   }


bool parser_hook::eval_method(const char* text, std::size_t size) noexcept
{
    switch (size)
    {
    case tag::size_of(tag::ack()):
        return tag::detect_method_id(method_, tag::ack(), text);

    case tag::size_of(tag::nack()):
        return tag::detect_method_id(method_, tag::nack(), text) ||
            tag::detect_method_id(method_, tag::send(), text);

    case tag::size_of(tag::abort()):
        return tag::detect_method_id(method_, tag::abort(), text) ||
            tag::detect_method_id(method_, tag::begin(), text);

    case tag::size_of(tag::commit()):
        return tag::detect_method_id(method_, tag::commit(), text);

    case tag::size_of(tag::connect()):
        return tag::detect_method_id(method_, tag::connect(), text) ||
            tag::detect_method_id(method_, tag::message(), text) ||
            tag::detect_method_id(method_, tag::receipt(), text);

    case tag::size_of(tag::connected()):
        return tag::detect_method_id(method_, tag::connected(), text) ||
            tag::detect_method_id(method_, tag::subscribe(), text);

    case tag::size_of(tag::disconnect()):
        return tag::detect_method_id(method_, tag::disconnect(), text);

    case tag::size_of(tag::unsubscribe()):
        return tag::detect_method_id(method_, tag::unsubscribe(), text);

    default:;
    }

    return false;
}

void parser_hook::on_begin() noexcept
{
    //std::cout << "on_begin" << std::endl;
}

void parser_hook::on_method(const char* text, std::size_t size) noexcept
{
    if (!eval_method(text, size))
        method_ = method::unknown;

    //std::cout << "on_method: " << std::string(text, size) << std::endl;
}

void parser_hook::on_hdrs_begin() noexcept
{
    //std::cout << "on_hdrs_begin" << std::endl;
}

void parser_hook::on_hdr_key(const char* text, std::size_t size) noexcept
{
    //std::cout << "\t" << std::string(text, size) << std::endl;
}

void parser_hook::on_hdr_val(const char* text, std::size_t size) noexcept
{
    //std::cout << "\t" << std::string(text, size) << std::endl;
}

void parser_hook::on_hdrs_end() noexcept
{
    //std::cout << "on_hdrs_end" << std::endl;
}

void parser_hook::on_body(const void *ptr, std::size_t size) noexcept
{
    //std::cout << "on_body: " << size << ' ' << std::string(static_cast<const char*>(ptr), size) << std::endl;
}

void parser_hook::on_end() noexcept
{
    //std::cout << "on_end" << std::endl;
}

} // stomptalk
