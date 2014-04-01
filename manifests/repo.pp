# == Class: zabbix::repo
# This sets up the Official Zabbix Repository on linux systems.
#
# === Parameters:
#
# === Actions:
#
# === Requires:
#
# === Sample Usage:
#   class { 'zabbix::repo':}
#     or
#   include zabbix::repo
#
class zabbix::repo {
  case $operatingsystem {
    centos  : { include zabbix::repo::centos }
    redhat  : { include zabbix::repo::redhat }
    debian  : { include zabbix::repo::debian }
    ubuntu  : { include zabbix::repo::ubuntu }
    default : { fail('Unrecognized operating system for webserver') }
  }
}

class zabbix::repo::centos {
  yumrepo { 'zabbix':
    baseurl  => 'http://repo.zabbix.com/zabbix/2.2/rhel/',
    gpgcheck => '1',
    gpgkey   => 'http://repo.zabbix.com/RPM-GPG-KEY-ZABBIX'
  }
}

class zabbix::repo::redhat {
  yumrepo { 'zabbix':
    baseurl  => 'http://repo.zabbix.com/zabbix/2.2/rhel/',
    gpgcheck => '1',
    gpgkey   => 'http://repo.zabbix.com/RPM-GPG-KEY-ZABBIX'
  }
}

class zabbix::repo::ubuntu {
  apt::source { 'zabbix':
    location   => 'http://repo.zabbix.com/zabbix/2.2/ubuntu/',
    release    => 'precise',
    repos      => 'main',
    key        => '79EA5ED4',
    key_source => 'http://repo.zabbix.com/zabbix-official-repo.key',
  }
}

class zabbix::repo::debian {
  apt::source { 'zabbix':
    location   => 'http://repo.zabbix.com/zabbix/2.2/debian/',
    release    => 'wheezy',
    repos      => 'main',
    key        => '79EA5ED4',
    key_source => 'http://repo.zabbix.com/zabbix-official-repo.key',
  }
}
