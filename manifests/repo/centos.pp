class zabbix::repo::centos {
  yumrepo { 'zabbix':
    baseurl  => "http://repo.zabbix.com/zabbix/${::zabbix::repo::version}/rhel/",
    gpgcheck => '1',
    gpgkey   => 'http://repo.zabbix.com/RPM-GPG-KEY-ZABBIX'
  }
}