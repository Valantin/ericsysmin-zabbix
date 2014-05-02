# == Class: zabbix::server::install
#
# This installs the zabbix server onto the sytem.
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::server::install {
  include zabbix::repo

  package { "zabbix-server-${zabbix::server::dbType}":
    ensure  => present,
    require => Class['zabbix::repo'],
  }
}
