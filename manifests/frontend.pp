# == Class: zabbix::frontend
# This sets up the Zabbix Frontend on systems.
#
# === Parameters:
#   [*dbType*]
#     Defaults to MYSQL.
#
#   [*dbServer*]
#     Defaults to localhost.
#
#   [*dbPort*]
#     Defaults to 3306.
#
#   [*dbDatabase*]
#     Defaults to 'zabbix'.
#
#   [*dbUser*]
#     Defaults to 'zabbix'.
#
#   [*dbPassword*]
#     Needs to be set.
#
#   [*dbSchema*]
#     SCHEMA is relevant only for IBM_DB2 database
#
#   [*zbxServer*]
#     Defaults to 'localhost'.
#
#   [*zbxServerPort*]
#     Defaults to '10051'.
#
#   [*zbxServerName*]
#
# === Requires:
#   [*dbType*] must be set
#   [*dbServer*] must be set
#   [*dbPort*] must be set
#   [*dbDatabase*] must be set
#   [*dbUser*] must be set
#   [*dbPassword*] must be set
#   [*zbxServer*] must be set
#   [*zbxServerPort*] must be set
#
# === Sample Usage:
#
# class { 'zabbix::frontend':
#  dbType        => 'mysql',
#  dbServer      => 'localhost',
#  dbPort        => '3306',
#  dbDatabase    => 'zabbix',
#  dbUser        => 'zabbix',
#  dbPassword    => 'zabbixPassword',
#  zbxServer     => 'localhost',
#  zbxServerPort => '10051',
#  zbxServerName => 'zabbix'
#}
#
class zabbix::frontend (
  $dbType        = $zabbix::frontend::params::dbType,
  $dbServer      = $zabbix::frontend::params::dbServer,
  $dbPort        = $zabbix::frontend::params::dbPort,
  $dbDatabase    = $zabbix::frontend::params::dbDatabase,
  $dbUser        = $zabbix::frontend::params::dbUser,
  $dbPassword    = $zabbix::frontend::params::dbPassword,
  $dbSchema      = $zabbix::frontend::params::dbSchema,
  $zbxServer     = $zabbix::frontend::params::zbxServer,
  $zbxServerPort = $zabbix::frontend::params::zbxServerPort,
  $zbxServerName = $zabbix::frontend::params::zbxServerName) inherits zabbix::frontend::params {
  class { 'zabbix::repo': } ->
  class { 'zabbix::frontend::install': } ->
  class { 'zabbix::frontend::config': }
}
