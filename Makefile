SCRIPTS_DIR = scripts
PREFIX = /usr/local

install:
	@for script in $(SCRIPTS_DIR)/*; do \
		sudo install -Dm755 $$script $(PREFIX)/bin/$$(basename $$script); \
	done

uninstall:
	@for script in $(SCRIPTS_DIR)/*; do \
		sudo rm -f $(PREFIX)/bin/$$(basename $$script); \
	done
