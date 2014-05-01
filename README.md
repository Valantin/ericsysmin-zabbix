#puppet-zabbix

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
  pidFile              => '/var/run/zabbix/zabbix_agentd.pid',
  logFile              => '/var/log/zabbix/zabbix_agentd.log',
  enableRemoteCommands => '1',
  server               => 'zabbix.example.com',
}
```

###How to manage the Zabbix Server
```ruby
class { 'zabbix::server':
  dbHost                  => undef,
  dbName                  => undef,
  dbUser                  => undef,
  dbPassword              => undef,
  dbPort                  => undef,

}

```
