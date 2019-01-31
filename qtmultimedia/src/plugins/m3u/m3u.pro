TARGET = qtmultimedia_m3u531V3-WCE6
QT += multimedia-private

PLUGIN_TYPE=playlistformats
PLUGIN_CLASS_NAME = QM3uPlaylistPlugin
load(qt_plugin)

HEADERS += qm3uhandler.h
SOURCES += qm3uhandler.cpp

OTHER_FILES += \
    m3u.json
