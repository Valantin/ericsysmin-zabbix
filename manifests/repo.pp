# == Class: zabbix::repo
# This sets up the Official Zabbix Repository on linux systems.
#
# === Parameters:
# [apt_pin]
# Used to force apt to use the zabbix official repository vs other repositories.
#
# [version]
# Can be used to specify the version of zabbix you wish to install the repository for. Defaults to 2.2.
#
# === Sample Usage:
#   class { 'zabbix::repo':}
#     or
#   include zabbix::repo
#
class zabbix::repo ($apt_pin = '510', $version = '2.2',) {
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
    baseurl  => "http://repo.zabbix.com/zabbix/${::zabbix::repo::version}/rhel/",
    gpgcheck => '1',
    gpgkey   => 'http://repo.zabbix.com/RPM-GPG-KEY-ZABBIX'
  }
}

class zabbix::repo::redhat {
  yumrepo { 'zabbix':
    baseurl  => "http://repo.zabbix.com/zabbix/${::zabbix::repo::version}/rhel/",
    gpgcheck => '1',
    gpgkey   => 'http://repo.zabbix.com/RPM-GPG-KEY-ZABBIX'
  }
}

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

class zabbix::repo::debian {
  apt::source { 'zabbix':
    location   => "http://repo.zabbix.com/zabbix/${::zabbix::repo::version}/debian/",
    release    => 'wheezy',
    repos      => 'main',
    key        => '79EA5ED4',
    key_source => 'http://repo.zabbix.com/zabbix-official-repo.key',
    pin        => $::zabbix::repo::apt_pin,
  }
}
