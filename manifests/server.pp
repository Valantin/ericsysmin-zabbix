# == Class: zabbix::server
# This sets up the Zabbix Server on systems.
#
# === Parameters:
#   [*dbType*]
#
#   [*nodeID*]
#
#   [*listenPort*]
#
#   [*sourceIP*]
#
#   [*logFile*]
#
#   [*logFileSize*]
#
#   [*debugLevel*]
#
#   [*pidFile*]
#
#   [*dbHost*]
#
#   [*dbName*]
#
#   [*dbSchema*]
#
#   [*dbUser*]
#
#   [*dbPassword*]
#
#   [*dbSocket*]
#
#   [*dbPort*]
#
#   [*startPollers*]
#
#   [*startIPMIPollers*]
#
#   [*startPollersUnreachable*]
#
#   [*startTrappers*]
#
#   [*startPingers*]
#
#   [*startDiscoverers*]
#
#   [*startHTTPPollers*]
#
#   [*startTimers*]
#
#   [*javaGateway*]
#
#   [*javaGatewayPort*]
#
#   [*startJavaPollers*]
#
#   [*startVMwareCollectors*]
#
#   [*vmwareFrequency*]
#
#   [*vmwareCacheSize*]
#
#   [*snmpTrapperFile*]
#
#   [*startSNMPTrapper*]
#
#   [*listenIP*]
#
#   [*housekeepingFrequency*]
#
#   [*maxHousekeeperDelete*]
#
#   [*senderFrequency*]
#
#   [*cacheSize*]
#
#   [*cacheUpdateFrequency*]
#
#   [*startDBSyncers*]
#
#   [*historyCacheSize*]
#
#   [*trendCacheSize*]
#
#   [*historyTextCacheSize
#
#   [*valueCacheSize*]
#
#   [*nodeNoEvents*]
#
#   [*nodeNoHistory*]
#
#   [*timeout*]
#
#   [*trapperTimeout*]
#
#   [*unreachablePeriod*]
#
#   [*unavailableDelay*]
#
#   [*unreachableDelay*]
#
#   [*alertScriptsPath*]
#
#   [*externalScripts*]
#
#   [*fpingLocation*]
#
#   [*fping6Location*]
#
#   [*sshKeyLocation*]
#
#   [*logSlowQueries*]
#
#   [*tmpDir*]
#
#   [*startProxyPollers*]
#
#   [*proxyConfigFrequency*]
#
#   [*proxyDataFrequency*]
#
#   [*allowRoot*]
#
#   [*include*]
#
#   [*loadModulePath*]
#
#   [*loadModule*]
#
# Actions:
#   This sets up the Zabbix Agent on systems.
#
# Requires:
#   [*server*] must be set
#
# Sample Usage:
# 	class { 'zabbix::server':
# 	  dbType                  => 'mysql',
# 	  nodeID                  => undef,
# 	  listenPort              => undef,
# 	  sourceIP                => undef,
# 	  logFile                 => undef,
# 	  logFileSize             => undef,
# 	  debugLevel              => undef,
# 	  pidFile                 => undef,
# 	  dbHost                  => undef,
# 	  dbName                  => undef,
# 	  dbSchema                => undef,
# 	  dbUser                  => undef,
# 	  dbPassword              => undef,
# 	  dbSocket                => undef,
# 	  dbPort                  => undef,
# 	  startPollers            => undef,
# 	  startIPMIPollers        => undef,
# 	  startPollersUnreachable => undef,
# 	  startTrappers           => undef,
# 	  startPingers            => undef,
# 	  startDiscoverers        => undef,
# 	  startHTTPPollers        => undef,
# 	  startTimers             => undef,
# 	  javaGateway             => undef,
# 	  javaGatewayPort         => undef,
# 	  startJavaPollers        => undef,
# 	  startVMwareCollectors   => undef,
# 	  vmwareFrequency         => undef,
# 	  vmwareCacheSize         => undef,
# 	  snmpTrapperFile         => undef,
# 	  startSNMPTrapper        => undef,
# 	  listenIP                => undef,
# 	  housekeepingFrequency   => undef,
# 	  maxHousekeeperDelete    => undef,
# 	  senderFrequency         => undef,
# 	  cacheSize               => undef,
# 	  cacheUpdateFrequency    => undef,
# 	  startDBSyncers          => undef,
# 	  historyCacheSize        => undef,
# 	  trendCacheSize          => undef,
# 	  historyTextCacheSize    => undef,
# 	  valueCacheSize          => undef,
# 	  nodeNoEvents            => undef,
# 	  nodeNoHistory           => undef,
# 	  timeout                 => undef,
# 	  trapperTimeout          => undef,
# 	  unreachablePeriod       => undef,
# 	  unavailableDelay        => undef,
# 	  unreachableDelay        => undef,
# 	  alertScriptsPath        => undef,
# 	  externalScripts         => undef,
# 	  fpingLocation           => undef,
# 	  fping6Location          => undef,
# 	  sshKeyLocation          => undef,
# 	  logSlowQueries          => undef,
# 	  tmpDir                  => undef,
# 	  startProxyPollers       => undef,
# 	  proxyConfigFrequency    => undef,
# 	  proxyDataFrequency      => undef,
# 	  allowRoot               => undef,
# 	  include                 => undef,
# 	  loadModulePath          => undef,
# 	  loadModule              => undef,
# 	}
#
class zabbix::server (
  $dbType                  = $zabbix::server::params::dbType,
  $nodeID                  = $zabbix::server::params::nodeID,
  $listenPort              = $zabbix::server::params::listenPort,
  $sourceIP                = $zabbix::server::params::sourceIP,
  $logFile                 = $zabbix::server::params::logFile,
  $logFileSize             = $zabbix::server::params::logFileSize,
  $debugLevel              = $zabbix::server::params::debugLevel,
  $pidFile                 = $zabbix::server::params::pidFile,
  $dbHost                  = $zabbix::server::params::dbHost,
  $dbName                  = $zabbix::server::params::dbName,
  $dbSchema                = $zabbix::server::params::dbSchema,
  $dbUser                  = $zabbix::server::params::dbUser,
  $dbPassword              = $zabbix::server::params::dbPassword,
  $dbSocket                = $zabbix::server::params::dbSocket,
  $dbPort                  = $zabbix::server::params::dbPort,
  $startPollers            = $zabbix::server::params::startPollers,
  $startIPMIPollers        = $zabbix::server::params::startIPMIPollers,
  $startPollersUnreachable = $zabbix::server::params::startPollersUnreachable,
  $startTrappers           = $zabbix::server::params::startTrappers,
  $startPingers            = $zabbix::server::params::startPingers,
  $startDiscoverers        = $zabbix::server::params::startDiscoverers,
  $startHTTPPollers        = $zabbix::server::params::startHTTPPollers,
  $startTimers             = $zabbix::server::params::startTimers,
  $javaGateway             = $zabbix::server::params::javaGateway,
  $javaGatewayPort         = $zabbix::server::params::javaGatewayPort,
  $startJavaPollers        = $zabbix::server::params::startJavaPollers,
  $startVMwareCollectors   = $zabbix::server::params::startVMwareCollectors,
  $vmwareFrequency         = $zabbix::server::params::vmwareFrequency,
  $vmwareCacheSize         = $zabbix::server::params::vmwareCacheSize,
  $snmpTrapperFile         = $zabbix::server::params::snmpTrapperFile,
  $startSNMPTrapper        = $zabbix::server::params::startSNMPTrapper,
  $listenIP                = $zabbix::server::params::listenIP,
  $housekeepingFrequency   = $zabbix::server::params::housekeepingFrequency,
  $maxHousekeeperDelete    = $zabbix::server::params::maxHousekeeperDelete,
  $senderFrequency         = $zabbix::server::params::senderFrequency,
  $cacheSize               = $zabbix::server::params::cacheSize,
  $cacheUpdateFrequency    = $zabbix::server::params::cacheUpdateFrequency,
  $startDBSyncers          = $zabbix::server::params::startDBSyncers,
  $historyCacheSize        = $zabbix::server::params::historyCacheSize,
  $trendCacheSize          = $zabbix::server::params::trendCacheSize,
  $historyTextCacheSize    = $zabbix::server::params::historyTextCacheSize,
  $valueCacheSize          = $zabbix::server::params::valueCacheSize,
  $nodeNoEvents            = $zabbix::server::params::nodeNoEvents,
  $nodeNoHistory           = $zabbix::server::params::nodeNoHistory,
  $timeout                 = $zabbix::server::params::timeout,
  $trapperTimeout          = $zabbix::server::params::trapperTimeout,
  $unreachablePeriod       = $zabbix::server::params::unreachablePeriod,
  $unavailableDelay        = $zabbix::server::params::unavailableDelay,
  $unreachableDelay        = $zabbix::server::params::unreachableDelay,
  $alertScriptsPath        = $zabbix::server::params::alertScriptsPath,
  $externalScripts         = $zabbix::server::params::externalScripts,
  $fpingLocation           = $zabbix::server::params::fpingLocation,
  $fping6Location          = $zabbix::server::params::fping6Location,
  $sshKeyLocation          = $zabbix::server::params::sshKeyLocation,
  $logSlowQueries          = $zabbix::server::params::logSlowQueries,
  $tmpDir                  = $zabbix::server::params::tmpDir,
  $startProxyPollers       = $zabbix::server::params::startProxyPollers,
  $proxyConfigFrequency    = $zabbix::server::params::proxyConfigFrequency,
  $proxyDataFrequency      = $zabbix::server::params::proxyDataFrequency,
  $allowRoot               = $zabbix::server::params::allowRoot,
  $include                 = $zabbix::server::params::include,
  $loadModulePath          = $zabbix::server::params::loadModulePath,
  $loadModule              = $zabbix::server::params::loadModule,) inherits zabbix::server::params {
  include zabbix::server::install
  include zabbix::server::config
  include zabbix::server::service
}
