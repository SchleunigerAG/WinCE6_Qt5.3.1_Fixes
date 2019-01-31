TARGET = qdds531V3-WCE6

PLUGIN_TYPE = imageformats
PLUGIN_CLASS_NAME = QDDSPlugin
load(qt_plugin)

HEADERS += \
    ddsheader.h \
    qddshandler.h

SOURCES += \
    ddsheader.cpp \
    main.cpp \
    qddshandler.cpp

OTHER_FILES += dds.json
