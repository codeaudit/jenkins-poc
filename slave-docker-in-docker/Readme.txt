Jenkins with Slaves (Docker in Docker)
--------------------------------------

### Issues

- Default docker version is 1.7.1 which is incompatible with the plugin (date format error)
- Downgrading to 1.4.1 suffers from random errors starting the internal docker daemon
	- Daemon not started
	- Failure to gracefully stop (device is busy)

