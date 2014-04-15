# Class: zabbix::server::install
#
#
# Parameters:
#
#
# Actions:
#   This installs the zabbix server onto the sytem.
#
# Requires:
#
#
# Sample Usage:
#   class { 'zabbix::server::install':}
#     or
#   include zabbix::server::install
#
class zabbix::server::install {
  include zabbix::repo

  package { "zabbix-server-${zabbix::server::dbType}":
    ensure  => present,
    require => Apt::Source['zabbix'],
  }
}
