# == Class: zabbix::frontend::params
#
# This class manages the parameters for the Zabbix frontend.
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::frontend::params (
  $dbType        = 'MYSQL',
  $dbServer      = 'localhost',
  $dbPort        = '3306',
  $dbDatabase    = 'zabbix',
  $dbUser        = 'zabbix',
  $dbPassword    = 'zabbix',
  $dbSchema      = undef,
  $zbxServer     = 'localhost',
  $zbxServerPort = '10051',
  $zbxServerName = undef) {
}
