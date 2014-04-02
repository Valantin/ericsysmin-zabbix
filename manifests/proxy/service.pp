# == Class: zabbix::proxy::service
#
# This class declares the Zabbix Proxy service to puppet, and verifies that the
# service is running.
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::proxy::service {
  service { 'zabbix-proxy':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    require    => Package["zabbix-proxy-${zabbix::proxy::dbType}"],
  }
}
