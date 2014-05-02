# == Class: zabbix::server
# This sets up the Zabbix Server on systems.
#
# === Parameters:
#  [*dbType*]
#  The database type that the Zabbix Server connects to.
#
#  [*nodeID*]
#  Unique NodeID in distributed setup.
#  0 - standalone server
#
#  [*listenPort*]
#  Listen port for trapper.
#
#  [*sourceIP*]
#  Source IP address for outgoing connections.
#
#  [*logFile*]
#  Name of log file.
#  If not set, syslog is used.
#
#  [*logFileSize*]
#  Maximum size of log file in MB.
#  0 - disable automatic log rotation.
#
#  [*debugLevel*]
#  Specifies debug level
#   0 - no debug
#   1 - critical information
#   2 - error information
#   3 - warnings
#   4 - for debugging (produces lots of information)
#
#  [*pidFile*]
#  Name of PID file.
#
#  [*dbHost*]
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
#   Number of pre-forked instances of ICMP pingers.
#
#   [*startDiscoverers*]
#   Number of pre-forked instances of discoverers.
#
#   [*startHTTPPollers*]
#   Number of pre-forked instances of HTTP pollers.
#
#   [*startTimers*]
#   Number of pre-forked instances of timers.
#   Timers process time-based trigger functions and maintenance periods.
#   Only the first timer process handles the maintenance periods.
#
#   [*javaGateway*]
#   IP address (or hostname) of Zabbix Java gateway.
#   Only required if Java pollers are started.
#
#   [*javaGatewayPort*]
#   Port that Zabbix Java gateway listens on.
#
#   [*startJavaPollers*]
#   Number of pre-forked instances of Java pollers.
#
#   [*startVMwareCollectors*]
#   Number of pre-forked vmware collector instances.
#
#   [*vmwareFrequency*]
#   How often Zabbix will connect to VMware service to obtain a new data.
#
#   [*vmwareCacheSize*]
#   Size of VMware cache, in bytes.
#   Shared memory size for storing VMware data.
#   Only used if VMware collectors are started.
#
#   [*snmpTrapperFile*]
#   Temporary file used for passing data from SNMP trap daemon to the server.
#   Must be the same as in zabbix_trap_receiver.pl or SNMPTT configuration file.
#
#   [*startSNMPTrapper*]
#   If 1, SNMP trapper process is started.
#
#   [*listenIP*]
#   List of comma delimited IP addresses that the trapper should listen on.
#   Trapper will listen on all network interfaces if this parameter is missing.
#
#   [*housekeepingFrequency*]
#   How often Zabbix will perform housekeeping procedure (in hours).
#   Housekeeping is removing unnecessary information from history, alert, and alarms tables.
#
#   [*maxHousekeeperDelete*]
#   The table "housekeeper" contains "tasks" for housekeeping procedure in the format:
#   [housekeeperid], [tablename], [field], [value].
#   No more than 'MaxHousekeeperDelete' rows (corresponding to [tablename], [field], [value])
#   will be deleted per one task in one housekeeping cycle.
#   SQLite3 does not use this parameter, deletes all corresponding rows without a limit.
#   If set to 0 then no limit is used at all. In this case you must know what you are doing!
#
#   [*senderFrequency*]
#   How often Zabbix will try to send unsent alerts (in seconds).
#
#   [*cacheSize*]
#   Size of configuration cache, in bytes.
#   Shared memory size for storing host, item and trigger data.
#
#   [*cacheUpdateFrequency*]
#   How often Zabbix will perform update of configuration cache, in seconds.
#
#   [*startDBSyncers*]
#   Number of pre-forked instances of DB Syncers
#
#   [*historyCacheSize*]
#   Size of history cache, in bytes.
#   Shared memory size for storing history data.
#
#   [*trendCacheSize*]
#   Size of trend cache, in bytes.
#   Shared memory size for storing trends data.
#
#   [*historyTextCacheSize*]
#   Size of text history cache, in bytes.
#   Shared memory size for storing character, text or log history data.
#
#   [*valueCacheSize*]
#   Size of history value cache, in bytes.
#   Shared memory size for caching item history data requests
#   Setting to 0 disables value cache.
#
#   [*nodeNoEvents*]
#   If set to '1' local events won't be sent to master node.
#   This won't impact ability of this node to propagate events from its child nodes.
#
#   [*nodeNoHistory*]
#   If set to '1' local events won't be sent to master node.
#   This won't impact ability of this node to propagate events from its child nodes.
#
#   [*timeout*]
#   Specifies how long we wait for agent, SNMP device or external check (in seconds)
#
#   [*trapperTimeout*]
#   Specifies how many seconds trapper may spend processing new data.
#
#   [*unreachablePeriod*]
#   After how many seconds of unreachability treat a host as unavailable.
#
#   [*unavailableDelay*]
#   How often host is checked for availability during the unavailability period, in seconds.
#
#   [*unreachableDelay*]
#   How often host is checked for availability during the unreachability period, in seconds.
#
#   [*alertScriptsPath*]
#   Full path to location of custom alert scripts.
#   Default depends on compilation options.
#
#   [*externalScripts*]
#   Full path to location of external scripts.
#   Default depends on compilation options.
#
#   [*fpingLocation*]
#   Location of fping.
#   Make sure that fping binary has root ownership and SUID flag set.
#
#   [*fping6Location*]
#   Location of fping6.
#   Make sure that fping6 binary has root ownership and SUID flag set.
#   Make empty if your fping utility is capable to process IPv6 addresses.
#
#   [*sshKeyLocation*]
#   Location of public and private keys for SSH checks and actions.
#
#   [*logSlowQueries*]
#   How long a database query may take before being logged (in milliseconds).
#   Only works if DebugLevel set to 3 or 4.
#   0 - don't log slow queries.
#
#   [*tmpDir*]
#   Temporary directory.
#
#   [*startProxyPollers*]
#   Number of pre-forked instances of pollers for passive proxies.
#
#   [*proxyConfigFrequency*]
#   How often Zabbix Server sends configuration data to a Zabbix Proxy in seconds.
#   This parameter is used only for proxies in the passive mode.
#
#   [*proxyDataFrequency*]
#   How often Zabbix Server requests history data from a Zabbix Proxy in seconds.
#   This parameter is used only for proxies in the passive mode.
#
#   [*allowRoot*]
#   Allow the server to run as 'root'. If disabled and the server is started by 'root', the server
#   will try to switch to user 'zabbix' instead. Has no effect if started under a regular user.
#   0 - do not allow
#   1 - allow
#
#   [*include*]
#   You may include individual files or all files in a directory in the configuration file.
#   Installing Zabbix will create include directory in /usr/local/etc, unless modified during the compile time.
#
#   [*loadModulePath*]
#   Full path to location of server modules.
#   Default depends on compilation options.
#
#   [*loadModule*]
#   Module to load at server startup. Modules are used to extend functionality of the server.
#   Format: LoadModule=<module.so>
#   The modules must be located in directory specified by LoadModulePath.
#   It is allowed to include multiple LoadModule parameters.
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
  $loadModule              = $zabbix::server::params::loadModule) inherits zabbix::server::params {
  class { 'apt': } ->
  class { 'zabbix::repo': } ->
  class { 'zabbix::server::install': } ->
  class { 'zabbix::server::config': } ~>
  class { 'zabbix::server::service': }
}
