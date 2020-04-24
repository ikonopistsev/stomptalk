#pragma once

#include "stomptalk/frame_base.hpp"

#include <string>
#include <vector>
#include <functional>

#include <cassert>
#include <cstdint>
#include <unordered_map>

namespace stomptalk {

class incoming_header
{
    typedef std::unordered_map<std::string, std::string> storage_type;
    typedef storage_type::iterator iterator;
    storage_type custom_header_{};
    iterator cursor_{custom_header_.end()};

protected:
    void push_key(std::string key)
    {
        // сбрасываем курсор хидера
        cursor_ = custom_header_.end();
        // находим хидер в мапе по ключу
        auto f = custom_header_.find(key);
        // по стандарту хидер добавляется только один раз
        if (f == cursor_)
        {
            // сохраняем курсор
            cursor_ = std::get<0>(
                custom_header_.emplace(std::move(key), std::string()));
        }
    }

    void push_value(std::string_view value)
    {
        // находим курсор
        auto end = custom_header_.end();
        if (cursor_ != end)
        {
            // выставляем значение
            cursor_->second = std::move(value);
            // сбрасываем курсор
            cursor_ = end;
        }
    }

    void push(std::string key, std::string_view value)
    {
        cursor_ = custom_header_.end();
        auto f = custom_header_.find(key);
        if (f == cursor_)
            custom_header_.emplace(std::move(key), std::move(value));
    }
};

namespace v12 {

class heart_beat final
    : public header::fixed
{
    std::size_t cx_;
    std::size_t cy_;

public:
    constexpr heart_beat(std::size_t cx, std::size_t cy = 0) noexcept
        : cx_(cx)
        , cy_(cy)
    {   }

    void apply(frame_base& frame) const
    {
        auto t = std::to_string(cx_);
        t += ',';
        t += std::to_string(cy_);
        frame.push(header::heart_beat(t));
    }

};

class connect
    : public frame_base
{
public:
    explicit connect(const std::string& host, std::size_t size_reserve = 320);

    connect(const std::string& host, const std::string& login,
        std::size_t size_reserve = 320);

    connect(const std::string& host, const std::string& login,
        const std::string& passcode, std::size_t size_reserve = 320);

    void push(header::fixed hrd)
    {
        frame_base::push(hrd);
    }
};

class subscribe
    : public frame_base
{
public:
    subscribe(const std::string& destination, const std::string& id,
              std::size_t size_reserve = 320);

    void push(header::fixed hrd)
    {
        frame_base::push(hrd);
    }
};

class send
    : public frame_base
{
public:
    explicit send(const std::string& dest, std::size_t size_reserve = 320);
};


class message
    : public frame_base
{
    header::destination destination_;
    header::message_id message_id_;
    header::subscription subscription_;
    header::ack ack_;
};

namespace incoming {

class message
{

};

} // namespace incoming

} // namespace v12
} // namespace stomptalk
