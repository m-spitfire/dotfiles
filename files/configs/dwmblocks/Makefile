all: dwmblocks-configs

dwmblocks-configs:
	$(setup_file)/configs/dwmblocks/blocks.h > $(DESTDIR)$(SRC_DIR)/dwmblocks/blocks.h
	
	sudo make -C $(DESTDIR)$(SRC_DIR)/dwmblocks install && { pidof dwmblocks && killall -q dwmblocks; setsid dwmblocks & }
