# == Class: zabbix::agent::service
#
# This class declares the Zabbix Agent service to puppet, and verifies that the
# service is running.
#
# === Authors
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::agent::service {
  service { 'zabbix-agent':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['zabbix-agent'],
  }
}
