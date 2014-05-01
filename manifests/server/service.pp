# == Class: zabbix::server::service
#
# This manages the Zabbix service on the server.
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::server::service {
  service { 'zabbix-server':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    require    => Package["zabbix-server-${zabbix::server::dbType}"],
  }
}
