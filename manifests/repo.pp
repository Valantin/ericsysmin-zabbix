# == Class: zabbix::repo
# This sets up the Official Zabbix Repository on linux systems.
#
# === Parameters:
# [apt_pin]
# Used to force apt to use the zabbix official repository vs other repositories.
#
# [version]
# Can be used to specify the version of zabbix you wish to install the
# repository for. Defaults to 2.2.
#
# === Sample Usage:
#   class { 'zabbix::repo':}
#     or
#   include zabbix::repo
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::repo ($apt_pin = '510', $version = '2.2') {
  case $operatingsystem {
    centos  : { include zabbix::repo::centos }
    redhat  : { include zabbix::repo::redhat }
    debian  : { include zabbix::repo::debian }
    ubuntu  : { include zabbix::repo::ubuntu }
    default : { fail('Unrecognized operating system for webserver') }
  }

}