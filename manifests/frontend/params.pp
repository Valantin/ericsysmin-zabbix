# == Class: zabbix::frontend::params
#
# This class manages the parameters for the Zabbix frontend.
#
# === Parameters:
#   [*dbType*]
#
#   [*dbServer*]
#     This is the url of the database server that you are trying to connect to.
#     Defaults to localhost.
#
#   [*dbPort*]
#     Port of the database to connect with. Defaults to port 3306.
#
#   [*dbDatabase*]
#     Database name of the zabbix database. Must be same as the zabbix server
#     database. Defaults to 'zabbix'.
#
#   [*dbUser*]
#     Database user for connecting to the dbDatabase. Defaults to 'zabbix'.
#
#   [*dbPassword*]
#     Database password for connecting to the dbDatabase. Is required does not
#     have default value.
#
#   [*dbSchema*]
#     dbSchema is relevant only for IBM_DB2 database.
#
#   [*zbxServer*]
#
#   [*zbxServerPort*]
#
#   [*zbxServerName*]
#
class zabbix::frontend::params (
  $dbType        = 'MYSQL',
  $dbServer      = 'localhost',
  $dbPort        = '3306',
  $dbDatabase    = 'zabbix',
  $dbUser        = 'zabbix',
  $dbPassword,
  $dbSchema      = undef,
  $zbxServer     = 'localhost',
  $zbxServerPort = '10051',
  $zbxServerName = '') {
}
