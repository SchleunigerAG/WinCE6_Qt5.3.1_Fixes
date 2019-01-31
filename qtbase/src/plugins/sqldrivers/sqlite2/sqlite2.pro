TARGET = qsqlite2531V3-WCE6

SOURCES = smain.cpp
OTHER_FILES += sqlite2.json
include(../../../sql/drivers/sqlite2/qsql_sqlite2.pri)

PLUGIN_CLASS_NAME = QSQLite2DriverPlugin
include(../qsqldriverbase.pri)
