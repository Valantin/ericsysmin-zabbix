class zabbix::server::service {
  service { 'zabbix-server':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    require    => Package["zabbix-server-${zabbix::server::dbType}"],
  }
}
