install:
	[ "$(shell id -u)" -eq 0 ] || { echo "--->Run as root<---"; exit 1; }
	ln -s "$(realpath ./fmd)" '/usr/bin/'

uninstall:
	[ "$(shell id -u)" -eq 0 ] || { echo "--->Run as root<---"; exit 1; }
	[ "$(realpath /usr/bin/fmd)" = "$(realpath ./fmd)" ]
	rm '/usr/bin/fmd'
