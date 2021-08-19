all: dwmblocks-scripts

dwmblocks-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_file)/scripts/dwmblocks/dwmblocks-music             > $(DESTDIR)$(BIN_DIR)/dwmblocks-music
	$(setup_file)/scripts/dwmblocks/dwmblocks-torrent           > $(DESTDIR)$(BIN_DIR)/dwmblocks-torrent
	$(setup_file)/scripts/dwmblocks/dwmblocks-volume            > $(DESTDIR)$(BIN_DIR)/dwmblocks-volume
	$(setup_file)/scripts/dwmblocks/dwmblocks-power             > $(DESTDIR)$(BIN_DIR)/dwmblocks-power
	$(setup_file)/scripts/dwmblocks/dwmblocks-network           > $(DESTDIR)$(BIN_DIR)/dwmblocks-network
	$(setup_file)/scripts/dwmblocks/dwmblocks-microphone        > $(DESTDIR)$(BIN_DIR)/dwmblocks-microphone
	$(setup_file)/scripts/dwmblocks/dwmblocks-webcam            > $(DESTDIR)$(BIN_DIR)/dwmblocks-webcam
	$(setup_file)/scripts/dwmblocks/dwmblocks-date              > $(DESTDIR)$(BIN_DIR)/dwmblocks-date

	chmod +x $(DESTDIR)$(BIN_DIR)/dwmblocks-microphone
	chmod +x $(DESTDIR)$(BIN_DIR)/dwmblocks-music
	chmod +x $(DESTDIR)$(BIN_DIR)/dwmblocks-network
	chmod +x $(DESTDIR)$(BIN_DIR)/dwmblocks-power
	chmod +x $(DESTDIR)$(BIN_DIR)/dwmblocks-volume
	chmod +x $(DESTDIR)$(BIN_DIR)/dwmblocks-webcam
	chmod +x $(DESTDIR)$(BIN_DIR)/dwmblocks-torrent 
	chmod +x $(DESTDIR)$(BIN_DIR)/dwmblocks-date 
