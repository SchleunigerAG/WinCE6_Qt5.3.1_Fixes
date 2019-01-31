TARGET = qgenericbearer531V3-WCE6

PLUGIN_TYPE = bearer
PLUGIN_CLASS_NAME = QGenericEnginePlugin
load(qt_plugin)

QT = core-private network-private

HEADERS += qgenericengine.h \
           ../qnetworksession_impl.h \
           ../qbearerengine_impl.h \
           ../platformdefs_win.h
SOURCES += qgenericengine.cpp \
           ../qnetworksession_impl.cpp \
           main.cpp

OTHER_FILES += generic.json
