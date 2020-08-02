#pragma once

#include "stomptalk/frame.hpp"
#include "stomptalk/btpro/packet.hpp"
#include "btpro/tcp/bev.hpp"

namespace stomptalk {
namespace tcp {

class frame
    : public stomptalk::frame::base
{
protected:
    btpro::buffer data_{};

    virtual void append(std::string_view text) override;
    virtual void append_ref(std::string_view text) override;
    virtual void append(btpro::buffer buf);

public:
    frame() = default;
    frame(frame&&) = default;
    virtual ~frame() override = default;

    virtual void reserve(std::size_t len) override;
    virtual void write(btpro::tcp::bev& output);
    std::string str() const;
};

class logon final
    : public frame
{
public:
    explicit logon(std::string_view host, std::size_t size_reserve = 320);

    logon(std::string_view host, std::string_view login,
        std::size_t size_reserve = 320);

    logon(std::string_view host, std::string_view login,
        std::string_view passcode, std::size_t size_reserve = 320);
};

class subscribe final
    : public frame
{
public:
    typedef std::function<void(packet)> fn_type;

private:
    std::string id_{};
    fn_type fn_{};

public:
    subscribe(std::string_view destination,
              std::size_t size_reserve = 320);

    subscribe(std::string_view destination,
              fn_type fn,
              std::size_t size_reserve = 320);

    subscribe(std::string_view destination,
              std::string_view id,
              fn_type fn,
              std::size_t size_reserve = 320);

    // выставить хидер
    void push(header::fixed hdr);

    void push(header::id hdr);

    void set(fn_type fn);

    const fn_type& fn() const noexcept;

    const std::string& id() const noexcept;
};

class send final
    : public frame
{
private:
    btpro::buffer payload_{};

public:
    send(std::string_view destination, std::size_t size_reserve = 320);

    void payload(btpro::buffer payload);

    void write(bt::bev& output) override;
};

} // namespace btpro
} // namespace stomptalk

