# == Class: zabbix::proxy::install
# This class installs the zabbix proxy package
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::proxy::install {
  package { "zabbix-proxy-${zabbix::proxy::params::dbType}": ensure => present, }
}