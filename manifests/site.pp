node default {
#	file {'/root/README':
#	ensure => file,
#	content => 'This is test README',
#	owner => root,
#	}
}


mode 'master.puppet.vm' {
	include role::master_server
}
