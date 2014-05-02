# == Class: zabbix::agent::config
# This class configures the zabbix agent configuration by combining the template
# and the configuration values from zabbix::agent::params.
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::agent::config {
  file { '/etc/zabbix/zabbix_agentd.conf':
    replace => true,
    content => template('zabbix/agent/zabbix_agentd.conf.erb'),
  }
}
