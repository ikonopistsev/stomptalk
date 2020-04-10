TEMPLATE = lib
TARGET = stomptalk

CONFIG += object_parallel_to_source static
CONFIG -= qt

SOURCES += \
    src/parser.c

HEADERS += include/stomptalk/parser.h \
    include/stomptalk/config.h \
    src/internal.h

INCLUDEPATH += include
DEFINES += STOMPTALK_DEBUG
