class profile::ssh_server {
	package {'openssh-server':
	ensure => present,
	}
	service {'sshd':
	ensure => 'running',
	enable => 'true',
	}
	ssh_authorized_keys { 'root@master.puppet.vm':
		ensure => present,
		user => 'root',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC3lZFD/lKWs66BOnd28uO2uSY36WVt5zUl8U6JdHOEKJVypWRWx3n8NqOG7elo3kolr4e3RVLJ78TEMD3bzn30Z0bozOGyW9MgiVgIlNyWfqRxXdNPWdfHDobTv9cWQ+peTyqd1ZNoBLGZUle9JpQDbXpIbKYd+knDKphuSH1Fpe94zfDKFW1qD4Q9n9mdSwDzBjcPLbdbnL/zwxzEdv5lYo+2zWRQXo6kPOk6+soEAv3vwO7Wcr3IvfnFFKfaAAPaGuEyT38GVV453Nx1ZqW2WppBIEJZA8CIg2UbLKjBLVkhkjfjVYROIzqc0BYOggl9gaDhjcLQP1HyHb0BMTMT root@master.puppet.vm',
	}
}