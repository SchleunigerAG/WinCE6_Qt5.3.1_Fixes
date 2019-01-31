TARGET  = qtscriptdbus531V3-WCE6

PLUGIN_TYPE = script
PLUGIN_CLASS_NAME = QtDBusScriptPlugin
load(qt_plugin)

QT = core gui script
CONFIG += qdbus

SOURCES += main.cpp
HEADERS += main.h
