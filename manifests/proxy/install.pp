# == Class: zabbix::proxy::install
# This class installs the zabbix proxy package
#
# === Sample Usage:
#   class { 'zabbix::proxy::install':}
#     or
#   include zabbix::proxy::install
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::proxy::install {
  include zabbix::repo

  package { "zabbix-proxy-${zabbix::proxy::params::dbType}":
    ensure  => present,
    require => Class['zabbix::repo'],
  }
}