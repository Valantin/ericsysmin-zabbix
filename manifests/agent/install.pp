# == Class: zabbix::agent::install
# This class installs the zabbix agent package
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::agent::install {
  package { 'zabbix-agent': ensure => $zabbix::agent::params::package_ensure }
}
