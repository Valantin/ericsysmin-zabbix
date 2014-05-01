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
  package { "zabbix-server-${zabbix::server::dbType}": ensure => present }
}
