TARGET = qtsensors_linuxsys531V3-WCE6
QT = core sensors

PLUGIN_TYPE = sensors
PLUGIN_CLASS_NAME = LinuxSensorPlugin
load(qt_plugin)

OTHER_FILES = plugin.json

!android:LIBS += -lrt
HEADERS += linuxsysaccelerometer.h
SOURCES += linuxsysaccelerometer.cpp \
main.cpp
