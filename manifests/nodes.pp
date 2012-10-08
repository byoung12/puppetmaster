## Node Definitions for Puppet Agents ##

class base {
    include sudo, ssh
}

node 'puppetclient.example.com' {
	include base
}
