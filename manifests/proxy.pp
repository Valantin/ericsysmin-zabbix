# == Class: zabbix::proxy::params
#
# This sets up the Zabbix Proxy parameters.
#
# === Parameters
#   [*dbType*]
#
#   [*proxyMode*]
#
# === Copyright
#
# Copyright 2014 Eric Anderson
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
  $dBHost                  = $zabbix::proxy::params::dBHost,
  $dBName                  = $zabbix::proxy::params::dBName,
  $dBSchema                = $zabbix::proxy::params::dBSchema,
  $dBUser                  = $zabbix::proxy::params::dBUser,
  $dBPassword              = $zabbix::proxy::params::dBPassword,
  $dBSocket                = $zabbix::proxy::params::dBSocket,
  $dBPort                  = $zabbix::proxy::params::dBPort,
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
  $vMwareFrequency         = $zabbix::proxy::params::vMwareFrequency,
  $vMwareCacheSize         = $zabbix::proxy::params::vMwareCacheSize,
  $sNMPTrapperFile         = $zabbix::proxy::params::sNMPTrapperFile,
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
  $sSHKeyLocation          = $zabbix::proxy::params::sSHKeyLocation,
  $logSlowQueries          = $zabbix::proxy::params::logSlowQueries,
  $tmpDir                  = $zabbix::proxy::params::tmpDir,
  $allowRoot               = $zabbix::proxy::params::allowRoot,
  $include                 = $zabbix::proxy::params::include,
  $loadModulePath          = $zabbix::proxy::params::loadModulePath,
  $loadModule              = $zabbix::proxy::params::loadModule) {
}