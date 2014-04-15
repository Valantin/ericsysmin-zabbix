#puppet-zabbix


##Build Status Information
[![Build Status](https://travis-ci.org/ericsysmin/puppet-zabbix.png)](https://travis-ci.org/ericsysmin/puppet-zabbix)

##Description

This module is to permit the ability to manage Zabbix Agent and Zabbix Server implementations. Currently this module is under construction and has been tested on Ubuntu only. zabbix::agent is the only class currently functional as I am still building the support of zabbix::server.

##How to use:

###Adding the Zabbix Official Repository
```ruby
class { 'zabbix::repo': } 
```
or 
```ruby
include zabbix::repo
```

###How to manage the Zabbix Agent
```ruby
class { 'zabbix::agent':
  pidFile              => '/var/run/zabbix/zabbix_agentd.pid', # optional
  logFile              => '/var/log/zabbix/zabbix_agentd.log', # optional
  logFileSize          => '', # optional
  debugLevel           => '', # optional
  sourceIP             => '', # optional
  enableRemoteCommands => '1', # optional
  logRemoteCommands    => '', # optional
  server               => 'zabbix.example.com', # MANDATORY
  listenPort           => '', # optional
  listenIP             => '', # optional
  startAgents          => '', # optional
  serverActive         => '', # optional
  hostname             => '', # optional
  hostnameItem         => '', # optional
  hostMetadata         => '', # optional
  hostMetadataItem     => '', # optional
  refreshActiveChecks  => '', # optional
  bufferSend           => '', # optional
  bufferSize           => '', # optional
  maxLinesPerSecond    => '', # optional
  allowRoot            => '', # optional
  alias                => '', # optional
  timeout              => '', # optional
  include              => '', # optional
}
```

###How to manage the Zabbix Server
```ruby
class { 'zabbix::server':
  nodeID                  => undef,
  listenPort              => undef,
  sourceIP                => undef,
  logFile                 => undef,
  logFileSize             => undef,
  debugLevel              => undef,
  pidFile                 => undef,
  dbHost                  => undef,
  dbName                  => undef,
  dbSchema                => undef,
  dbUser                  => undef,
  dbPassword              => undef,
  dbSocket                => undef,
  dbPort                  => undef,
  startPollers            => undef,
  startIPMIPollers        => undef,
  startPollersUnreachable => undef,
  startTrappers           => undef,
  startPingers            => undef,
  startDiscoverers        => undef,
  startHTTPPollers        => undef,
  startTimers             => undef,
  javaGateway             => undef,
  javaGatewayPort         => undef,
  startJavaPollers        => undef,
  startVMwareCollectors   => undef,
  vmwareFrequency         => undef,
  vmwareCacheSize         => undef,
  snmpTrapperFile         => undef,
  startSNMPTrapper        => undef,
  listenIP                => undef,
  housekeepingFrequency   => undef,
  maxHousekeeperDelete    => undef,
  senderFrequency         => undef,
  cacheSize               => undef,
  cacheUpdateFrequency    => undef,
  startDBSyncers          => undef,
  historyCacheSize        => undef,
  trendCacheSize          => undef,
  historyTextCacheSize    => undef,
  valueCacheSize          => undef,
  nodeNoEvents            => undef,
  nodeNoHistory           => undef,
  timeout                 => undef,
  trapperTimeout          => undef,
  unreachablePeriod       => undef,
  unavailableDelay        => undef,
  unreachableDelay        => undef,
  alertScriptsPath        => undef,
  externalScripts         => undef,
  fpingLocation           => undef,
  fping6Location          => undef,
  sshKeyLocation          => undef,
  logSlowQueries          => undef,
  tmpDir                  => undef,
  startProxyPollers       => undef,
  proxyConfigFrequency    => undef,
  proxyDataFrequency      => undef,
  allowRoot               => undef,
  include                 => undef,
  loadModulePath          => undef,
  loadModule              => undef,
}
```
