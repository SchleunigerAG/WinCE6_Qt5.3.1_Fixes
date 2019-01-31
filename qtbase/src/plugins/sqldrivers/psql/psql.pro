TARGET = qsqlpsql531V3-WCE6

SOURCES = main.cpp
OTHER_FILES += psql.json
include(../../../sql/drivers/psql/qsql_psql.pri)

PLUGIN_CLASS_NAME = QPSQLDriverPlugin
include(../qsqldriverbase.pri)
