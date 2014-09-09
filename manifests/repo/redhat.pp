# == Class: zabbix::repo::redhat
# This sets up the Official Zabbix Repository on CentOS systems.
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::repo::redhat {
  yumrepo { 'zabbix':
    baseurl  => "http://repo.zabbix.com/zabbix/${::zabbix::repo::version}/rhel/${lsbmajdistrelease}/\$basearch",
    gpgcheck => '1',
    gpgkey   => 'http://repo.zabbix.com/RPM-GPG-KEY-ZABBIX',
    enabled  => '1'
  }
}
