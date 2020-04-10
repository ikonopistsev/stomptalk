#ifndef __STAMPTALK_CONFIG_H__
#define __STAMPTALK_CONFIG_H__

#ifdef __cplusplus
extern "C" {
#endif

#ifndef STOMPTALK_EXPORT
# if (defined __GNUC__ && __GNUC__ >= 4) || defined __INTEL_COMPILER || defined __clang__
#  define STOMPTALK_EXPORT __attribute__ ((visibility("default")))
# else
#  define STOMPTALK_EXPORT
# endif
#endif


#if defined(_MSC_VER) && _MSC_VER >= 1500 /* MSVC 2008 */
#  define DEPRECATED(message)   __declspec(deprecated(message))
#elif defined(__clang__) && defined(__has_feature)
#  if __has_feature(attribute_deprecated_with_message)
#    define DEPRECATED(message) __attribute__ ((deprecated(message)))
#  endif
#  elif defined(__GNUC__) && (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 5))
#    define DEPRECATED(message) __attribute__ ((deprecated(message)))
#  elif defined(__GNUC__) && (__GNUC__ > 3 || (__GNUC__ == 3 && __GNUC_MINOR__ >= 1))
#    define DEPRECATED(message) __attribute__((__deprecated__))
#  else
#   define DEPRECATED(message)
#endif

#ifdef __cplusplus
}
#endif

#endif
