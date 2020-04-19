TEMPLATE = lib
TARGET = stomptalk

CONFIG += object_parallel_to_source static c++17
CONFIG -= qt

SOURCES += \
    src/parser.cpp \
#    src/content.cpp \
#    src/frame_base.cpp \
#    src/header_base.cpp \
#    src/header.cpp \
#    src/strref.cpp \
#    src/v12.cpp \
    src/parser_hook.cpp

HEADERS += \
    include/stomptalk/header.hpp \
    include/stomptalk/strref.hpp \
    include/stomptalk/memeq.hpp \
    include/stomptalk/tag.hpp \
    include/stomptalk/parser.hpp \
    include/stomptalk/parser_hook.hpp \
    include/stomptalk/method.hpp \
    include/stomptalk/stackbuf.hpp \
    include/stomptalk/user_hook.hpp

INCLUDEPATH += include

CONFIG(release, debug|release) {
    DEFINES += NDEBUG
}

#DEFINES += __AVX__ __AVX2__

QMAKE_CXXFLAGS_RELEASE += "-O3 -march=native"
QMAKE_LFLAGS_RELEASE += "-O3 -march=native"

#QMAKE_CXXFLAGS_RELEASE += "-O3 -march=native -fprofile-generate"
#QMAKE_LFLAGS_RELEASE += "-O3 -march=native -fprofile-generate"

#QMAKE_CXXFLAGS_RELEASE += "-O3 -march=native -fprofile-use"
#QMAKE_LFLAGS_RELEASE += "-O3 -march=native -fprofile-use"

