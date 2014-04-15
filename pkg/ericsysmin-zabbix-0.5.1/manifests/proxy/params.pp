# == Class: zabbix::proxy::params
#
# This sets up the Zabbix Proxy parameters.
#
# === Parameters:
#   [dbType]
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class zabbix::proxy::params (
  $dbType                  = undef,
  $proxyMode               = undef,
  $server                  = undef,
  $serverPort              = undef,
  $hostname                = undef,
  $hostnameItem            = undef,
  $listenPort              = undef,
  $sourceIP                = undef,
  $logFile                 = undef,
  $logFileSize             = undef,
  $debugLevel              = undef,
  $dBHost                  = undef,
  $dBName                  = undef,
  $dBSchema                = undef,
  $dBUser                  = undef,
  $dBPassword              = undef,
  $dBSocket                = undef,
  $dBPort                  = undef,
  $proxyLocalBuffer        = undef,
  $proxyOfflineBuffer      = undef,
  $heartbeatFrequency      = undef,
  $configFrequency         = undef,
  $dataSenderFrequency     = undef,
  $startPollers            = undef,
  $startIPMIPollers        = undef,
  $startPollersUnreachable = undef,
  $startTrappers           = undef,
  $startPingers            = undef,
  $startDiscoverers        = undef,
  $startHTTPPollers        = undef,
  $javaGateway             = undef,
  $javaGatewayPort         = undef,
  $startJavaPollers        = undef,
  $startVMwareCollectors   = undef,
  $vMwareFrequency         = undef,
  $vMwareCacheSize         = undef,
  $sNMPTrapperFile         = undef,
  $listenIP                = undef,
  $housekeepingFrequency   = undef,
  $cacheSize               = undef,
  $startDBSyncers          = undef,
  $historyCacheSize        = undef,
  $historyTextCacheSize    = undef,
  $timeout                 = undef,
  $trapperTimeout          = undef,
  $unreachablePeriod       = undef,
  $unavailableDelay        = undef,
  $unreachableDelay        = undef,
  $externalScripts         = undef,
  $fpingLocation           = undef,
  $fping6Location          = undef,
  $sSHKeyLocation          = undef,
  $logSlowQueries          = undef,
  $tmpDir                  = undef,
  $allowRoot               = undef,
  $include                 = undef,
  $loadModulePath          = undef,
  $loadModule              = undef,) {
}