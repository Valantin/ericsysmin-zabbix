# == Class: zabbix::frontend::config
# This class configures the zabbix frontend configuration by combining the
# template and the configuration values from zabbix::frontend::params.
#
# === Sample Usage:
# class {'zabbix::frontend::config': } or include zabbix::frontend::config
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::frontend::config {
  file { '/etc/zabbix/web/zabbix.conf.php':
    require => Class['zabbix::frontend::install'],
    replace => true,
    mode    => 0640,
    owner   => 'root',
    group   => 'www-data',
    content => template('zabbix/frontend/zabbix.conf.php.erb'),
  }
}
