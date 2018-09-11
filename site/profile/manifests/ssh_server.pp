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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6uUT7oc3R2zeSng6z8a9MFJSJgX5yxyC1nyewC2Iuvpp9nBrqxuQJYJ9VSu74iSkCTpkCVVgkbKeIyJTP4g3UHMr6YfOpcVU1fdM1jrlI1ggXzY2TDYl/LAMEwlwJ0xhs9Mdf6LGJG9B72gcTDWxv3im9oqTU5YnI65+pvgtFOTOs9aSrVNSjtQynTxIQA+DH1W6drM2jOeumNCu0bZk+MFZuldDQ7E1fAn9mYQeayUsPMOKnM/3zIb0x0WHYxaw0W9qRR8+W7VLUYxy2kMkUf4pkrtKdQ2wsfCd1NT9D1nNnxmqK/UoUHwCt5SuMvNpiCey0kMOh+zcVMdGmQ3xL
',
	}  
}
