all: git-scripts

git-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_file)/scripts/git/git-init-todo   > $(DESTDIR)$(BIN_DIR)/git-init-todo

	chmod +x $(DESTDIR)$(BIN_DIR)/git-init-todo
