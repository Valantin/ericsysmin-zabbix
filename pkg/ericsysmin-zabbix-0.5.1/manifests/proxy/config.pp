# == Class: zabbix::proxy::config
# This class configures the zabbix proxy configuration by combining the template
# and the configuration values from zabbix::proxy::params.
#
# === Sample Usage:
# class {'zabbix::proxy::config': } or include zabbix::proxy::config
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::proxy::config {
  file { '/etc/zabbix/zabbix_proxy.conf':
    notify  => Service['zabbix-proxy'],
    require => Class['zabbix::proxy::install'],
    replace => true,
    content => template('zabbix/proxy/zabbix_proxy.conf.erb'),
  }
}