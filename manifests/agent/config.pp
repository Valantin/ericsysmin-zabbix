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
    notify  => Service['zabbix-agent'],
    require => Class['zabbix::agent::install'],
    replace => true,
    content => template('zabbix/agent/zabbix_agentd.conf.erb'),
  }
}
