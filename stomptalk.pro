TEMPLATE = lib
TARGET = stomptalk

CONFIG += object_parallel_to_source static
CONFIG -= qt

SOURCES += \
    src/parser.cpp

HEADERS += include/stomptalk/parser.h \
    include/stomptalk/config.h \
    include/stomptalk/stomptalk.hpp \
    src/memeq.hpp

INCLUDEPATH += include
#DEFINES += STOMPTALK_DEBUG
