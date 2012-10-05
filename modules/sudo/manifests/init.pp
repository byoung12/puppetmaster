class sudo {
    package { sudo:
	ensure => present,
}

if $operatingsystem == "ubuntu" { 
    package { "sudo-ldap":
	ensure => present
	require => 	
    }
}

file { "/etc/sudoers":
    owner => "root",
    group => "root",
    mode => 0440,
    source => "puppet://$puppetserver/modules/sudo/etc/sudoers",
    require => Package["sudo"]
    }
}
