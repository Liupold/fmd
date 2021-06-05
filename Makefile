install:
	[ "$(whoami)" != "root" ]
	ln -s "$(realpath ./fmd)" '/usr/bin/'

uninstall:
	[ "$(whoami)" != "root" ]
	[ "$(realpath /usr/bin/fmd)" = "$(realpath ./fmd)" ]
	rm '/usr/bin/fmd'
