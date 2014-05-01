# == Class: zabbix::server::config
#
# This sets up the Zabbix Server config on systems. By editing the zabbix_server.conf file.
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::server::config {
  file { '/etc/zabbix/zabbix_server.conf':
    replace => true,
    content => template('zabbix/server/zabbix_server.conf.erb'),
  }
}
