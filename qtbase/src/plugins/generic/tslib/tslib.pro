TARGET = qtslibplugin531V3-WCE6

PLUGIN_TYPE = generic
PLUGIN_EXTENDS = -
PLUGIN_CLASS_NAME = QTsLibPlugin
load(qt_plugin)

HEADERS	= qtslib.h

SOURCES	= main.cpp \
	qtslib.cpp

QT += gui-private

LIBS += -lts

OTHER_FILES += tslib.json
