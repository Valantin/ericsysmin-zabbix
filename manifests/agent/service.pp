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
    ensure     => $zabbix::agent::params::service_ensure,
    hasstatus  => true,
    hasrestart => true
  }
}
