# == Class: zabbix::repo::debian
# This sets up the Official Zabbix Repository on Debian systems.
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::repo::debian {
  include apt

  apt::source { 'zabbix':
    location   => "http://repo.zabbix.com/zabbix/${::zabbix::repo::version}/debian/",
    release    => 'wheezy',
    repos      => 'main',
    key        => '79EA5ED4',
    key_source => 'http://repo.zabbix.com/zabbix-official-repo.key',
    pin        => $::zabbix::repo::apt_pin,
    require    => Class['apt'],
  }
}