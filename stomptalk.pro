TEMPLATE = lib
TARGET = stomptalk

CONFIG -= qt
CONFIG += object_parallel_to_source c++17 console warn_on static
CONFIG -= app_bundle

SOURCES += \
    src/parser.cpp \
    src/parser_hook.cpp \
    src/btpro/connection.cpp \
    src/user_hook.cpp

HEADERS += \
    include/stomptalk/btpro/receipt_pool.hpp \
    include/stomptalk/btpro/subs_pool.hpp \
    include/stomptalk/header.hpp \
    include/stomptalk/strref.hpp \
    include/stomptalk/memeq.hpp \
    include/stomptalk/tag.hpp \
    include/stomptalk/parser.hpp \
    include/stomptalk/parser_hook.hpp \
    include/stomptalk/stackbuf.hpp \
    include/stomptalk/user_hook.hpp \
    include/stomptalk/validator.hpp \
    include/stomptalk/v12.hpp \
    include/stomptalk/rabbitmq.hpp \
    include/stomptalk/antoull.hpp \
    include/stomptalk/validator.hpp \
    include/stomptalk/btpro/frame.hpp \
    include/stomptalk/btpro/v12.hpp \
    include/stomptalk/btpro/connection.hpp \
    include/stomptalk/frame.hpp

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

