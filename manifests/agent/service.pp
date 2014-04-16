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
<<<<<<< HEAD
    ensure     => running,
=======
    ensure     => $zabbix::agent::params::service_ensure,
>>>>>>> 94b8434565eb5f0c27398c2b48a0d008ce5075f1
    hasstatus  => true,
    hasrestart => true,
    require    => Package['zabbix-agent'],
  }
}
