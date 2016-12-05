⁠⁠⁠--This is the configuration file for lsyncd
settings {
	logfile = "/var/log/lsyncd/lsyncd.log",
	statusFile = "/var/log/lsyncd/lsyncd.status"
}	
sync {
	default.rsyncssh,
	source = "replacesource",
	host = "45.55.80.138",
	targetdir = "/home/replacename",
	rsync = { rsh = "/usr/bin/ssh -l replacename -i /home/replaceuser/.ssh/id_rsa" }
}
