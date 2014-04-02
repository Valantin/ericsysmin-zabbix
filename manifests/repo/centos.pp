# == Class: zabbix::repo::centos
# This sets up the Official Zabbix Repository on CentOS systems.
#
# === Sample Usage:
#   include zabbix::repo::centos
#
# === Copyright
#
# Copyright 2014 Eric Anderson
#
class zabbix::repo::centos {
  yumrepo { 'zabbix':
    baseurl  => "http://repo.zabbix.com/zabbix/${::zabbix::repo::version}/rhel/",
    gpgcheck => '1',
    gpgkey   => 'http://repo.zabbix.com/RPM-GPG-KEY-ZABBIX'
  }
}