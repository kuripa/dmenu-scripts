# VARIABLES

PREFIX = /usr/local
BINDIR = /bin

SCRIPTS = $(wildcard scripts/*)
CONFIG = config
CONFIGDIR = $(HOME)/.config/dm-scripts

install:
	sudo install -m 775 $(SCRIPTS) -t $(PREFIX)$(BINDIR)
	mkdir -p $(CONFIGDIR)
	install $(CONFIG) -t $(CONFIGDIR)

.PHONY: install
