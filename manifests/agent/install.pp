# == Class: zabbix::agent::install
# This class installs the zabbix agent package
#
# === Sample Usage:
# class { 'zabbix::agent::install':}
# or
# include zabbix::agent::install
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::agent::install {
  include zabbix::repo

  package { 'zabbix-agent':
<<<<<<< HEAD
    ensure  => present,
=======
    ensure  => $zabbix::agent::params::package_ensure,
>>>>>>> 94b8434565eb5f0c27398c2b48a0d008ce5075f1
    require => Class['zabbix::repo'],
  }
}
