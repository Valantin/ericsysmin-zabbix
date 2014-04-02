# == Class: zabbix::server::params
#
# This class manages Zabbix server parameters
#
# === Parameters:
#
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
# Sample Usage:
# 	class { 'zabbix::server::params':
# 	  logFile => '/var/log/zabbix/zabbix_server.log',
# 	  dbName  => 'zabbix',
# 	  dbUser  => 'zabbix'
# 	}
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
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
