# == Class: zabbix::agent::install
# This class installs the zabbix agent package
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::agent::install {
  include zabbix::repo

  package { 'zabbix-agent':
    ensure  => $zabbix::agent::params::package_ensure,
    require => Class['zabbix::repo'],
  }
}
