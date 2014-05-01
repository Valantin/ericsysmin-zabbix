# == Class: zabbix::repo::ubuntu
# This sets up the Official Zabbix Repository on Ubuntu systems.
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::repo::ubuntu {
  apt::source { 'zabbix':
    location   => "http://repo.zabbix.com/zabbix/${::zabbix::repo::version}/ubuntu/",
    release    => 'precise',
    repos      => 'main',
    key        => '79EA5ED4',
    key_source => 'http://repo.zabbix.com/zabbix-official-repo.key',
    pin        => $::zabbix::repo::apt_pin,
  }
}