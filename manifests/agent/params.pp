# == Class: zabbix::agent::params
#
# This sets up the Zabbix Agent on systems.
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::agent::params (
  $package_ensure       = 'present',
  $service_ensure       = 'running',
  $pidFile              = '/var/run/zabbix/zabbix_agentd.pid',
  $logFile              = '/var/log/zabbix/zabbix_agentd.log',
  $logFileSize          = undef,
  $debugLevel           = undef,
  $sourceIP             = undef,
  $enableRemoteCommands = undef,
  $logRemoteCommands    = undef,
  $server               = '127.0.0.1',
  $listenPort           = undef,
  $listenIP             = undef,
  $startAgents          = undef,
  $serverActive         = undef,
  $hostname             = undef,
  $hostnameItem         = undef,
  $hostMetadata         = undef,
  $hostMetadataItem     = undef,
  $refreshActiveChecks  = undef,
  $bufferSend           = undef,
  $bufferSize           = undef,
  $maxLinesPerSecond    = undef,
  $allowRoot            = undef,
  $zabbix_alias         = undef,
  $timeout              = undef,
  $include              = undef,
  $unsafeUserParameters = undef,
  $userParameter        = undef) {
}
