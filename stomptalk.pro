TEMPLATE = lib
TARGET = stomptalk

CONFIG -= qt
CONFIG += object_parallel_to_source c++17 console warn_on static
CONFIG -= app_bundle

SOURCES += \
    src/tag.cpp \
    src/parser.cpp \
    src/version.cpp \
    src/stomplay.cpp \
    src/parser_hook.cpp \
    src/header_store.cpp \
    src/stomplay_hook.cpp

HEADERS += \
    include/stomptalk/basic_text.hpp \
    include/stomptalk/header.hpp \
    include/stomptalk/hook_base.hpp \
    include/stomptalk/memeq.hpp \
    include/stomptalk/tag.hpp \
    include/stomptalk/parser.hpp \
    include/stomptalk/parser_hook.hpp \
    include/stomptalk/stackbuf.hpp \
    include/stomptalk/antoull.hpp \
    include/stomptalk/frame_base.hpp \
    include/stomptalk/version.hpp \
    include/stomptalk/header_store.hpp \
    include/stomptalk/stomplay_hook.hpp \
    include/stomptalk/fnv1a.hpp \
    include/stomptalk/stomplay.hpp

INCLUDEPATH += include \
    ..

CONFIG(release, debug|release) {
    DEFINES += NDEBUG
}

QMAKE_CXXFLAGS_RELEASE += "-O3 -march=native"
QMAKE_LFLAGS_RELEASE += "-O3 -march=native"

#QMAKE_CXXFLAGS_RELEASE += "-O3 -march=native -fprofile-generate"
#QMAKE_LFLAGS_RELEASE += "-O3 -march=native -fprofile-generate"

#QMAKE_CXXFLAGS_RELEASE += "-O3 -march=native -fprofile-use"
#QMAKE_LFLAGS_RELEASE += "-O3 -march=native -fprofile-use"

