
install: rpmbuildless
	cp rpmbuildless /usr/bin/

uninstall: /usr/bin/rpmbuildless
	rm rpmbuildless

