TARGET = qevdevtabletplugin531V3-WCE6

PLUGIN_TYPE = generic
PLUGIN_EXTENDS = -
PLUGIN_CLASS_NAME = QEvdevTabletPlugin
load(qt_plugin)

SOURCES = main.cpp

QT += core-private platformsupport-private gui-private

OTHER_FILES += \
    evdevtablet.json
