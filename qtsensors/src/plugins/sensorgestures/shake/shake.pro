TARGET = qtsensorgestures_shakeplugin531V3-WCE6
QT = core sensors

PLUGIN_TYPE = sensorgestures
PLUGIN_CLASS_NAME = QShakeSensorGesturePlugin
PLUGIN_EXTENDS = -
load(qt_plugin)

# Input
HEADERS += qshakesensorgestureplugin.h \
           qshakerecognizer.h
SOURCES += qshakesensorgestureplugin.cpp \
           qshakerecognizer.cpp

OTHER_FILES += \
    plugin.json

