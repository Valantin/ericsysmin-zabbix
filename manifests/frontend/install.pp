# == Class: zabbix::frontend::install
# This class installs the zabbix frontend package
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::frontend::install {
  include zabbix::repo

  package { 'zabbix-frontend-php':
    ensure  => present,
    require => Class['zabbix::repo'],
  }
}
