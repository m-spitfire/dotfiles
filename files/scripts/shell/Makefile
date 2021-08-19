all: shell-scripts

shell-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_file)/scripts/shell/battery-status               > $(DESTDIR)$(BIN_DIR)/battery-status
	$(setup_file)/scripts/shell/calculate                    > $(DESTDIR)$(BIN_DIR)/calculate
	$(setup_file)/scripts/shell/man                          > $(DESTDIR)$(BIN_DIR)/man
	$(setup_file)/scripts/shell/remaps                       > $(DESTDIR)$(BIN_DIR)/remaps
	$(setup_file)/scripts/shell/linkhandler                  > $(DESTDIR)$(BIN_DIR)/linkhandler
	$(setup_file)/scripts/shell/dmenuhandler                 > $(DESTDIR)$(BIN_DIR)/dmenuhandler
	$(setup_file)/scripts/shell/documentation                > $(DESTDIR)$(BIN_DIR)/documentation
	$(setup_file)/scripts/shell/documentation-all            > $(DESTDIR)$(BIN_DIR)/documentation-all
	$(setup_file)/scripts/shell/open-document                > $(DESTDIR)$(BIN_DIR)/open-document
	$(setup_file)/scripts/shell/status                       > $(DESTDIR)$(BIN_DIR)/status
	$(setup_file)/scripts/shell/xdg-open                     > $(DESTDIR)$(BIN_DIR)/xdg-open
	$(setup_file)/scripts/shell/system-menu                  > $(DESTDIR)$(BIN_DIR)/system-menu

	chmod +x $(DESTDIR)$(BIN_DIR)/battery-status
	chmod +x $(DESTDIR)$(BIN_DIR)/calculate
	chmod +x $(DESTDIR)$(BIN_DIR)/man
	chmod +x $(DESTDIR)$(BIN_DIR)/remaps
	chmod +x $(DESTDIR)$(BIN_DIR)/linkhandler
	chmod +x $(DESTDIR)$(BIN_DIR)/dmenuhandler
	chmod +x $(DESTDIR)$(BIN_DIR)/documentation
	chmod +x $(DESTDIR)$(BIN_DIR)/documentation-all
	chmod +x $(DESTDIR)$(BIN_DIR)/open-document
	chmod +x $(DESTDIR)$(BIN_DIR)/status
	chmod +x $(DESTDIR)$(BIN_DIR)/xdg-open
	chmod +x $(DESTDIR)$(BIN_DIR)/system-menu
