# == Class: zabbix::server::params
#
# This class manages Zabbix server parameters
#
# === Parameters:
#
#   [dbType]
#
# 	[nodeID]
#
# 	[listenPort]
#
# 	[sourceIP]
#
# 	[logFile]
#
# 	[logFileSize]
#
# 	[debugLevel]
#
# 	[pidFile]
#
# 	[dbHost]
#
# 	[dbName]
#
# 	[dbSchema]
#
# 	[dbUser]
#
# 	[dbPassword]
#
# 	[dbSocket]
#
# 	[dbPort]
#
# 	[startPollers]
#
# 	[startIPMIPollers]
#
# 	[startPollersUnreachable]
#
# 	[startTrappers]
#
# 	[startPingers]
#
# 	[startDiscoverers]
#
# 	[startHTTPPollers]
#
# 	[startTimers]
#
# 	[javaGateway]
#
# 	[javaGatewayPort]
#
# 	[startJavaPollers]
#
# 	[startVMwareCollectors]
#
# 	[vmwareFrequency]
#
# 	[vmwareCacheSize]
#
# 	[snmpTrapperFile]
#
# 	[startSNMPTrapper]
#
# 	[listenIP]
#
# 	[housekeepingFrequency]
#
# 	[maxHousekeeperDelete]
#
# 	[senderFrequency]
#
# 	[cacheSize]
#
# 	[cacheUpdateFrequency]
#
# 	[startDBSyncers]
#
# 	[historyCacheSize]
#
# 	[trendCacheSize]
#
# 	[historyTextCacheSize]
#
# 	[valueCacheSize]
#
# 	[nodeNoEvents]
#
# 	[nodeNoHistory]
#
# 	[timeout]
#
# 	[trapperTimeout]
#
# 	[unreachablePeriod]
#
# 	[unavailableDelay]
#
# 	[unreachableDelay]
#
# 	[alertScriptsPath]
#
# 	[externalScripts]
#
# 	[fpingLocation]
#
# 	[fping6Location]
#
# 	[sshKeyLocation]
#
# 	[logSlowQueries]
#
# 	[tmpDir]
#
# 	[startProxyPollers]
#
# 	[proxyConfigFrequency]
#
# 	[proxyDataFrequency]
#
# 	[allowRoot]
#
# 	[include]
#
# 	[loadModulePath]
#
# 	[loadModule]
#
# Actions:
#
# Requires:
#
# Sample Usage:
# 	class { 'zabbix::server::params':
# 	  logFile => '/var/log/zabbix/zabbix_server.log',
# 	  dbName  => 'zabbix',
# 	  dbUser  => 'zabbix'
# 	}
class zabbix::server::params (
  $dbType                  = undef,
  $nodeID                  = undef,
  $listenPort              = undef,
  $sourceIP                = undef,
  $logFile                 = undef,
  $logFileSize             = undef,
  $debugLevel              = undef,
  $pidFile                 = undef,
  $dbHost                  = undef,
  $dbName                  = undef,
  $dbSchema                = undef,
  $dbUser                  = undef,
  $dbPassword              = undef,
  $dbSocket                = undef,
  $dbPort                  = undef,
  $startPollers            = undef,
  $startIPMIPollers        = undef,
  $startPollersUnreachable = undef,
  $startTrappers           = undef,
  $startPingers            = undef,
  $startDiscoverers        = undef,
  $startHTTPPollers        = undef,
  $startTimers             = undef,
  $javaGateway             = undef,
  $javaGatewayPort         = undef,
  $startJavaPollers        = undef,
  $startVMwareCollectors   = undef,
  $vmwareFrequency         = undef,
  $vmwareCacheSize         = undef,
  $snmpTrapperFile         = undef,
  $startSNMPTrapper        = undef,
  $listenIP                = undef,
  $housekeepingFrequency   = undef,
  $maxHousekeeperDelete    = undef,
  $senderFrequency         = undef,
  $cacheSize               = undef,
  $cacheUpdateFrequency    = undef,
  $startDBSyncers          = undef,
  $historyCacheSize        = undef,
  $trendCacheSize          = undef,
  $historyTextCacheSize    = undef,
  $valueCacheSize          = undef,
  $nodeNoEvents            = undef,
  $nodeNoHistory           = undef,
  $timeout                 = undef,
  $trapperTimeout          = undef,
  $unreachablePeriod       = undef,
  $unavailableDelay        = undef,
  $unreachableDelay        = undef,
  $alertScriptsPath        = undef,
  $externalScripts         = undef,
  $fpingLocation           = undef,
  $fping6Location          = undef,
  $sshKeyLocation          = undef,
  $logSlowQueries          = undef,
  $tmpDir                  = undef,
  $startProxyPollers       = undef,
  $proxyConfigFrequency    = undef,
  $proxyDataFrequency      = undef,
  $allowRoot               = undef,
  $include                 = undef,
  $loadModulePath          = undef,
  $loadModule              = undef,) {
}
