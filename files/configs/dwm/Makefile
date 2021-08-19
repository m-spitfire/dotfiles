all: dwm-configs

dwm-configs:
	$(setup_file)/configs/dwm/config.h > $(DESTDIR)$(SRC_DIR)/dwm/config.h
	
	sudo make -C $(DESTDIR)$(SRC_DIR)/dwm install

