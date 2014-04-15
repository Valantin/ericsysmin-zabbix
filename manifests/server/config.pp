# Class: zabbix::server::config
#
# This sets up the Zabbix Server config on systems. By editing the zabbix_server.conf file.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#   include zabbix::server::config or class {'zabbix::server::config': }
#
class zabbix::server::config {
  file { '/etc/zabbix/zabbix_server.conf':
    notify  => Service['zabbix-server'],
    require => Class['zabbix::server::install'],
    replace => true,
    content => template('zabbix/server/zabbix_server.conf.erb'),
  }
}
