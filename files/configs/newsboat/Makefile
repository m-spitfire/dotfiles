all: newsboat-configs

sfeed-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d

	$(setup_file)/configs/newsboat/config > $(DESTDIR)$(CONFIG_DIR)/newsboat/config
	$(setup_file)/configs/newsboat/config.d/general > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/general
	$(setup_file)/configs/newsboat/config.d/bindings > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/bindings
	$(setup_file)/configs/newsboat/config.d/style > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/style
