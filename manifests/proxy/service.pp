class zabbix::proxy::service {
  service { 'zabbix-proxy':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    require    => Package["zabbix-proxy-${zabbix::proxy::dbType}"],
  }
}
