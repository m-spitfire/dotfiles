all: slock-configs

slock-configs:
	$(setup_file)/configs/slock/config.h > $(DESTDIR)$(SRC_DIR)/slock/config.h
	
	sudo make -C $(DESTDIR)$(SRC_DIR)/slock install
