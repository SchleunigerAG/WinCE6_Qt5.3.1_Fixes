TARGET = qtposition_simulator531V3-WCE6
QT = core network positioning

PLUGIN_TYPE = position
PLUGIN_CLASS_NAME = SimulatorPositionPlugin
load(qt_plugin)

INCLUDEPATH += $$QT.location.includes

QT += simulator
DEFINES += QT_SIMULATOR
SOURCES += qgeopositioninfosource_simulator.cpp \
            qlocationdata_simulator.cpp \
            qgeosatelliteinfosource_simulator.cpp \
            qlocationconnection_simulator.cpp \
    qgeopositioninfosourcefactory_simulator.cpp
HEADERS += qgeopositioninfosource_simulator_p.h \
            qlocationdata_simulator_p.h \
            qgeosatelliteinfosource_simulator_p.h \
            qlocationconnection_simulator_p.h \
    qgeopositioninfosourcefactory_simulator.h

OTHER_FILES += \
    plugin.json
