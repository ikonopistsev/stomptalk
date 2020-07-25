#pragma once

#include "stomptalk/frame.hpp"
#include "btpro/tcp/bev.hpp"

namespace stomptalk {
namespace tcp {

class frame
    : public stomptalk::frame::base
{
protected:
    be::buffer buf_;

    virtual void append(std::string_view text) override
    {
        buf_.append(text.data(), text.size());
    }

    virtual void append_ref(std::string_view text) override
    {
        buf_.append_ref(text.data(), text.size());
    }

    void append(be::buffer buf)
    {
        buf_.append(std::move(buf));
    }

public:
    frame() = default;
    frame(frame&&) = default;

    virtual ~frame() override = default;

    virtual void reserve(std::size_t len) override
    {
        buf_.expand(len);
    }

    virtual void write(bt::bev& output)
    {
        append_ref(make_ref("\n\0"));
        output.write(std::move(buf_));
    }

    std::string str() const
    {
        return buf_.str();
    }
};

class send_frame final
    : public frame
{
    be::buffer data_;

public:
    send_frame() = default;
    send_frame(send_frame&&) = default;

    virtual ~send_frame() override = default;

    void append_data(be::buffer data)
    {
        data_.append(std::move(data));
    }

    virtual void write(bt::bev& output) override
    {
        auto sz = data_.size();
        if (sz)
        {
            push(header::content_type_octet());
            auto size_text = btdef::to_text(sz);
            std::string_view size(size_text.data(), size_text.size());
            push(header::content_length(size));
            append_ref(make_ref("\n"));
            buf_.append(std::move(data_));
            append_ref(make_ref("\0"));

            std::cout << std::endl << str() << std::endl;
            output.write(std::move(buf_));
        }
        else
            frame::write(output);
    }

    std::string str() const
    {
        return buf_.str();
    }
};

class subscribe
{
public:
    typedef std::function<void(be::buffer)> fn_type;

private:
    be::buffer data_{};
    std::string id_{};
    fn_type fn_{};

    void append(std::string_view text)
    {
        data_.append(text.data(), text.size());
    }

    void append_ref(std::string_view text)
    {
        data_.append_ref(text.data(), text.size());
    }

    void push_fixed(header::fixed hdr)
    {
        append(hdr.key());
        append_ref(make_ref(":"));
        append(hdr.value());
        append_ref(make_ref("\n"));
    }

public:
    subscribe(const std::string& destination,
              std::size_t size_reserve = 320)
    {
        data_.expand(size_reserve);
        push(method::tag::subscribe::name());
        push(header::destination(destination));
    }

    subscribe(const std::string& destination,
              fn_type fn,
              std::size_t size_reserve = 320)
        : fn_(std::move(fn))
    {
        data_.expand(size_reserve);
        push(method::tag::subscribe::name());
        push(header::destination(destination));
    }

    subscribe(const std::string& destination,
              const std::string& id,
              fn_type fn,
              std::size_t size_reserve = 320)
        : id_(id)
        , fn_(std::move(fn))
    {
        data_.expand(size_reserve);
        push(method::tag::subscribe::name());
        push(header::destination(destination));
    }

    template<std::size_t N>
    void push(strref<N> val)
    {
        append_ref(val);
        append_ref(make_ref("\n"));
    }

    // выставить хидер
    void push(header::fixed hdr)
    {
        push_fixed(hdr);
    }

    void push(header::id hdr)
    {
        id_ = hdr.value();
        push_fixed(hdr);
    }

    void set(fn_type fn)
    {
        fn_ = std::move(fn);
    }

    const fn_type& fn() const noexcept
    {
        return fn_;
    }

    const std::string& id() const noexcept
    {
        return id_;
    }

    void write(bt::bev& output)
    {
        append_ref(make_ref("\n\0"));
        output.write(std::move(data_));
    }

    std::string str() const noexcept
    {
        return data_.str();
    }
};

class send
{
private:
    be::buffer data_{};
    be::buffer payload_{};

    void append(std::string_view text)
    {
        data_.append(text.data(), text.size());
    }

    void append_ref(std::string_view text)
    {
        data_.append_ref(text.data(), text.size());
    }

    void push_fixed(header::fixed hdr)
    {
        append(hdr.key());
        append_ref(make_ref(":"));
        append(hdr.value());
        append_ref(make_ref("\n"));
    }

public:
    send(const std::string& destination, std::size_t size_reserve = 320)
    {
        data_.expand(size_reserve);
        push(method::tag::send::name());
        push(header::destination(destination));
    }

    template<std::size_t N>
    void push(strref<N> val)
    {
        append_ref(val);
        append_ref(make_ref("\n"));
    }

    // выставить хидер
    void push(header::fixed hdr)
    {
        push_fixed(hdr);
    }

    void payload(be::buffer buf)
    {
        payload_.append(std::move(buf));
    }

    void write(bt::bev& output)
    {
        auto payload_size = payload_.size();
        if (payload_size)
        {
            // печатаем размер контента
            auto size_text = btdef::to_text(payload_size);
            std::string_view size(size_text.data(), size_text.size());
            push(header::content_length(size));

            // маркер конца хидеров
            append_ref(make_ref("\n"));

            // добавляем данные
            data_.append(std::move(payload_));

            // маркер конца пакета
            append_ref(make_ref("\0"));
        }
        else
            append_ref(make_ref("\n\0"));

        output.write(std::move(data_));
    }

    std::string str() const noexcept
    {
        return data_.str();
    }
};

} // namespace btpro
} // namespace stomptalk

