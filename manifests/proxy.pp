# == Class: zabbix::proxy::params
#
# This sets up the Zabbix Proxy parameters.
#
# === Parameters
#   [*dbType*]
#
#
#   [*proxyMode*]
#
#
#   [*server*]
#
#
#   [*serverPort*]
#
#
#   [*hostname*]
#
#
#   [*hostnameItem*]
#
#
#   [*listenPort*]
#
#
#   [*sourceIP*]
#
#
#   [*logFile*]
#
#
#   [*logFileSize*]
#
#
#   [*debugLevel*]
#
#
#   [*dBHost*]
#
#
#   [*dBName*]
#
#
#   [*dBSchema*]
#
#
#   [*dBUser*]
#
#
#   [*dBPassword*]
#
#
#   [*dBSocket*]
#
#
#   [*dBPort*]
#
#
#   [*proxyLocalBuffer*]
#
#
#   [*proxyOfflineBuffer*]
#
#
#   [*heartbeatFrequency*]
#
#
#   [*configFrequency*]
#
#
#   [*dataSenderFrequency*]
#
#
#   [*startPollers*]
#
#
#   [*startIPMIPollers*]
#
#
#   [*startPollersUnreachable*]
#
#
#   [*startTrappers*]
#
#
#   [*startPingers*]
#
#
#   [*startDiscoverers*]
#
#
#   [*startHTTPPollers*]
#
#
#   [*startDiscoverers*]
#
#
#   [*javaGateway*]
#
#
#   [*javaGatewayPort*]
#
#
#   [*javaGateway*]
#
#
#   [*startJavaPollers*]
#
#
#   [*startVMwareCollectors*]
#
#
#   [*vMwareFrequency*]
#
#
#   [*vMwareCacheSize*]
#
#
#   [*sNMPTrapperFile*]
#
#
#   [*listenIP*]
#
#
#   [*housekeepingFrequency*]
#
#
#   [*cacheSize*]
#
#
#   [*startDBSyncers*]
#
#
#   [*historyCacheSize*]
#
#
#   [*historyTextCacheSize*]
#
#
#   [*timeout*]
#
#
#   [*trapperTimeout*]
#
#
#   [*unreachablePeriod*]
#
#
#   [*unavailableDelay*]
#
#
#   [*unreachableDelay*]
#
#
#   [*externalScripts*]
#
#
#   [*fpingLocation*]
#
#
#   [*fping6Location*]
#
#
#   [*sSHKeyLocation*]
#
#
#   [*logSlowQueries*]
#
#
#   [*tmpDir*]
#
#
#   [*allowRoot*]
#
#
#   [*include*]
#
#
#   [*loadModulePath*]
#
#
#   [*loadModule*]
#
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::proxy (
  $dbType                  = $zabbix::proxy::params::dbType,
  $proxyMode               = $zabbix::proxy::params::proxyMode,
  $server                  = $zabbix::proxy::params::server,
  $serverPort              = $zabbix::proxy::params::serverPort,
  $hostname                = $zabbix::proxy::params::hostname,
  $hostnameItem            = $zabbix::proxy::params::hostnameItem,
  $listenPort              = $zabbix::proxy::params::listenPort,
  $sourceIP                = $zabbix::proxy::params::sourceIP,
  $logFile                 = $zabbix::proxy::params::logFile,
  $logFileSize             = $zabbix::proxy::params::logFileSize,
  $debugLevel              = $zabbix::proxy::params::debugLevel,
  $dBHost                  = $zabbix::proxy::params::dbHost,
  $dBName                  = $zabbix::proxy::params::dbName,
  $dBSchema                = $zabbix::proxy::params::dbSchema,
  $dBUser                  = $zabbix::proxy::params::dbUser,
  $dBPassword              = $zabbix::proxy::params::dbPassword,
  $dBSocket                = $zabbix::proxy::params::dbSocket,
  $dBPort                  = $zabbix::proxy::params::dbPort,
  $proxyLocalBuffer        = $zabbix::proxy::params::proxyLocalBuffer,
  $proxyOfflineBuffer      = $zabbix::proxy::params::proxyOfflineBuffer,
  $heartbeatFrequency      = $zabbix::proxy::params::heartbeatFrequency,
  $configFrequency         = $zabbix::proxy::params::configFrequency,
  $dataSenderFrequency     = $zabbix::proxy::params::dataSenderFrequency,
  $startPollers            = $zabbix::proxy::params::startPollers,
  $startIPMIPollers        = $zabbix::proxy::params::startIPMIPollers,
  $startPollersUnreachable = $zabbix::proxy::params::startPollersUnreachable,
  $startTrappers           = $zabbix::proxy::params::startTrappers,
  $startPingers            = $zabbix::proxy::params::startPingers,
  $startDiscoverers        = $zabbix::proxy::params::startDiscoverers,
  $startHTTPPollers        = $zabbix::proxy::params::startHTTPPollers,
  $javaGateway             = $zabbix::proxy::params::javaGateway,
  $javaGatewayPort         = $zabbix::proxy::params::javaGatewayPort,
  $startJavaPollers        = $zabbix::proxy::params::startJavaPollers,
  $startVMwareCollectors   = $zabbix::proxy::params::startVMwareCollectors,
  $vmwareFrequency         = $zabbix::proxy::params::vmwareFrequency,
  $vmwareCacheSize         = $zabbix::proxy::params::vmwareCacheSize,
  $sNMPTrapperFile         = $zabbix::proxy::params::snmpTrapperFile,
  $listenIP                = $zabbix::proxy::params::listenIP,
  $housekeepingFrequency   = $zabbix::proxy::params::housekeepingFrequency,
  $cacheSize               = $zabbix::proxy::params::cacheSize,
  $startDBSyncers          = $zabbix::proxy::params::startDBSyncers,
  $historyCacheSize        = $zabbix::proxy::params::historyCacheSize,
  $historyTextCacheSize    = $zabbix::proxy::params::historyTextCacheSize,
  $timeout                 = $zabbix::proxy::params::timeout,
  $trapperTimeout          = $zabbix::proxy::params::trapperTimeout,
  $unreachablePeriod       = $zabbix::proxy::params::unreachablePeriod,
  $unavailableDelay        = $zabbix::proxy::params::unavailableDelay,
  $unreachableDelay        = $zabbix::proxy::params::unreachableDelay,
  $externalScripts         = $zabbix::proxy::params::externalScripts,
  $fpingLocation           = $zabbix::proxy::params::fpingLocation,
  $fping6Location          = $zabbix::proxy::params::fping6Location,
  $sshKeyLocation          = $zabbix::proxy::params::sshKeyLocation,
  $logSlowQueries          = $zabbix::proxy::params::logSlowQueries,
  $tmpDir                  = $zabbix::proxy::params::tmpDir,
  $allowRoot               = $zabbix::proxy::params::allowRoot,
  $include                 = $zabbix::proxy::params::include,
  $loadModulePath          = $zabbix::proxy::params::loadModulePath,
  $loadModule              = $zabbix::proxy::params::loadModule) inherits zabbix::proxy::params {
  include apt
  include zabbix::repo
  include zabbix::proxy::install
  include zabbix::proxy::service
  include zabbix::proxy::config

  Class['zabbix::proxy::params'] ->
  Class['apt'] ->
  Class['zabbix::repo'] ->
  Class['zabbix::proxy::install'] ->
  Class['zabbix::proxy::config'] ~>
  Class['zabbix::proxy::service']
}