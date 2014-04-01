# == Class: zabbix::agent::install
# This class installs the zabbix agent package
#
# === Sample Usage:
#   class { 'zabbix::agent::install':}
#     or
#   include zabbix::agent::install
#
class zabbix::agent::install {
  include zabbix::repo

  package { 'zabbix-agent':
    ensure  => present,
    require => Class['zabbix::repo'],
  }
}
