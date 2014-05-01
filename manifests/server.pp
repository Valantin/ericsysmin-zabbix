# == Class: zabbix::server
# This sets up the Zabbix Server on systems.
#
# === Parameters:
#   [*dbType*]
#     The database type that the Zabbix Server connects to.
#
#   [*nodeID*]
#     Unique NodeID in distributed setup.
#       0 - standalone server
#
#   [*listenPort*]
#     Listen port for trapper.
#
#   [*sourceIP*]
#     Source IP address for outgoing connections.
#
#   [*logFile*]
#     Name of log file.
#       If not set, syslog is used.
#
#   [*logFileSize*]
#     Maximum size of log file in MB.
#       0 - disable automatic log rotation.
#
#   [*debugLevel*]
#     Specifies debug level
#       0 - no debug
#       1 - critical information
#       2 - error information
#       3 - warnings
#       4 - for debugging (produces lots of information)
#
#   [*pidFile*]
#     Name of PID file.
#
#   [*dbHost*]
#     Database host name.
#       If set to localhost, socket is used for MySQL.
#       If set to empty string, socket is used for PostgreSQL.
#
#   [*dbName*]
#     Database name.
#       For SQLite3 path to database file must be provided. DBUser and
#       DBPassword are ignored.
#
#   [*dbSchema*]
#     Schema name. Used for IBM DB2.
#
#   [*dbUser*]
#     Database user. Ignored for SQLite.
#
#   [*dbPassword*]
#     Database password. Ignored for SQLite.
#
#   [*dbSocket*]
#     Path to MySQL socket.
#
#   [*dbPort*]
#     Database port when not using local socket. Ignored for SQLite.
#
#   [*startPollers*]
#     Number of pre-forked instances of pollers.
#
#   [*startIPMIPollers*]
#     Number of pre-forked instances of IPMI pollers.
#
#   [*startPollersUnreachable*]
#     Number of pre-forked instances of pollers for unreachable hosts (including
#     IPMI).
#
#   [*startTrappers*]
#     Number of pre-forked instances of trappers.
#       Trappers accept incoming connections from Zabbix sender, active agents,
#       active proxies and child nodes.
#       At least one trapper process must be running to display server
#       availability in the frontend.
#
#   [*startPingers*]
#     Number of pre-forked instances of ICMP pingers.
#
#   [*startDiscoverers*]
#     Number of pre-forked instances of discoverers.
#
#   [*startHTTPPollers*]
#     Number of pre-forked instances of HTTP pollers.
#
#   [*startTimers*]
#     Number of pre-forked instances of timers.
#       Timers process time-based trigger functions and maintenance periods.
#       Only the first timer process handles the maintenance periods.
#
#   [*javaGateway*]
#     IP address (or hostname) of Zabbix Java gateway.
#       Only required if Java pollers are started.
#
#   [*javaGatewayPort*]
#     Port that Zabbix Java gateway listens on.
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
#   [*historyTextCacheSize*]
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
# === Sample Usage:
# 	class { 'zabbix::server':
# 	  dbType                  => 'mysql',
# 	  dbHost                  => 'localhost',
# 	  dbName                  => 'zabbix',
# 	  dbUser                  => 'zabbix',
# 	  dbPassword              => 'zabbixPassword',
# 	  dbPort                  => '3306',
# 	  allowRoot               => '1',
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
  $loadModule              = $zabbix::server::params::loadModule) {
  include zabbix::repo
  include zabbix::server::params
  include zabbix::server::install
  include zabbix::server::config
  include zabbix::server::service

  Class['zabbix::servers::params'] ->
  Class['zabbix::repo'] ->
  Class['zabbix::server::install'] ->
  Class['zabbix::server::config'] ~>
  Class['zabbix::server::service']

}
