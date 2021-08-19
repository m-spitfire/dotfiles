all: shell-docs

shell-docs:
	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	$(setup_file)/docs/shell/battery-status.scd           | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/battery-status.1perso
	$(setup_file)/docs/shell/calculate.scd                | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/calculate.1perso
	$(setup_file)/docs/shell/documentation-all.scd        | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/documentation-all.1perso
	$(setup_file)/docs/shell/documentation.scd            | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/documentation.1perso
	$(setup_file)/docs/shell/man.scd                      | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/man.1perso
	$(setup_file)/docs/shell/open-document.scd            | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/open-document.1perso
	$(setup_file)/docs/shell/status.scd                   | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/status.1perso
	$(setup_file)/docs/shell/xdg-open.scd                 | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/xdg-open.1perso
