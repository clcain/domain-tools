install: uninstall
	mkdir -p ~/.local/bin/
	ln -s -f $$PWD/bin/* ~/.local/bin/

uninstall:
	for i in $$(ls bin/); do rm -f ~/.local/bin/$$i; done
	rm -rf ~/.local/bin/domaintest
	rm -rf ~/.local/bin/pingtest
