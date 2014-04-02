class zabbix::repo::redhat {
  yumrepo { 'zabbix':
    baseurl  => "http://repo.zabbix.com/zabbix/${::zabbix::repo::version}/rhel/",
    gpgcheck => '1',
    gpgkey   => 'http://repo.zabbix.com/RPM-GPG-KEY-ZABBIX'
  }
}