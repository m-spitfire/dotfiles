all: git-docs

git-docs:
	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	$(setup_file)/docs/git/git-init-todo.scd   | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-init-todo.1perso
