# == Class: zabbix::frontend::install
# This class installs the zabbix frontend package
#
# === Sample Usage:
#   class { 'zabbix::frontend::install':}
#     or
#   include zabbix::frontend::install
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::frontend::install {
  package { 'zabbix-frontend-php': ensure => present }
}
