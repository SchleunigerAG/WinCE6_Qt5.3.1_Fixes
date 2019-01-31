TARGET  = qmng531V3-WCE6

PLUGIN_TYPE = imageformats
PLUGIN_CLASS_NAME = QMngPlugin
load(qt_plugin)

include(qmnghandler.pri)
SOURCES += main.cpp
OTHER_FILES += mng.json
