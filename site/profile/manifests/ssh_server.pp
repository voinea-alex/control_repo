class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCrH1RUyvc8ZDRAZjAyaFLBMfvoETbrU5qyUF3M3VimwyOhy0CD2KT4JYLoUOv2DLt0NhkpQcnvcocpDlKowVxfSOERI0UAedcuYKZM9PLtLvYjxiLjgAXSMWiMDk5P/JjBjfZS4OWulqyBJ39Xw3aeNB6hrw2wCpTS+OmQrMq6gRF67oaNEtVWheYjsk9hm33keTyMTZSyupiTac0NWLKU10Wo87ayO/8+QL+8SVIRZ30KlruSMEz0ahYQ8Ddlfr7Oc1a7z5LKB7bHuIjaC3P/z8xsTXJV8znpnPXA3XVaIrOvawtHMp025rIMq8g9beG40F4lNI5/hf2bOeimY2kp',
	}  
}
