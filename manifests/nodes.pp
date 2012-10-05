## Node Definitions for Puppet Agents ##

node 'puppetclient.example.com' {
	include sudo
	package { 'vim': ensure => present }
}
