node default {
	file {'/root/README':
	ensure => file,
	content => 'This is test README',
	owner => root,
	}
  file {'/root/README':
	owner => root,
	}
}
