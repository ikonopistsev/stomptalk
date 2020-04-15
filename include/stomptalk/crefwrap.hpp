#pragma once

namespace stomptalk {

template<class T>
class crefwrap
{
    const T& ref_;

public:
    constexpr crefwrap(const crefwrap&) = default;
    constexpr crefwrap& operator=(const crefwrap<T>&) = default;

    constexpr crefwrap(const T& ref) noexcept
        : ref_(ref)
    {   }

    constexpr const T& get() const noexcept
    {
        return ref_;
    }
};

template<class T>
constexpr inline crefwrap<T> cref(T& val) noexcept
{
    return crefwrap<T>(val);
}

} // namespace crefwrap
