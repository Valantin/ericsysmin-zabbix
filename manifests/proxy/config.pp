# == Class: zabbix::proxy::config
# This class configures the zabbix proxy configuration by combining the template
# and the configuration values from zabbix::proxy::params.
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::proxy::config {
  file { '/etc/zabbix/zabbix_proxy.conf':
    replace => true,
    content => template('zabbix/proxy/zabbix_proxy.conf.erb'),
  }
}