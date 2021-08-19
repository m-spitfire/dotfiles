all: nvim-configs

nvim-configs:
	mkdir -p $(CONFIG_DIR)/nvim
	mkdir -p $(CONFIG_DIR)/nvim/lua
	mkdir -p $(CONFIG_DIR)/nvim/plugin
	
	$(setup_file)/configs/nvim/init.lua                                             > $(DESTDIR)$(CONFIG_DIR)/nvim/init.lua
	$(setup_file)/configs/nvim/lua/first_setup.lua                                  > $(DESTDIR)$(CONFIG_DIR)/nvim/lua/first_setup.lua
	$(setup_file)/configs/nvim/lua/plugins.lua                                      > $(DESTDIR)$(CONFIG_DIR)/nvim/lua/plugins.lua
	$(setup_file)/configs/nvim/lua/aucmds.lua                                       > $(DESTDIR)$(CONFIG_DIR)/nvim/lua/aucmds.lua
	$(setup_file)/configs/nvim/lua/_telescope.lua                                   > $(DESTDIR)$(CONFIG_DIR)/nvim/lua/_telescope.lua
	$(setup_file)/configs/nvim/plugin/options.lua                                   > $(DESTDIR)$(CONFIG_DIR)/nvim/plugin/options.lua
	$(setup_file)/configs/nvim/plugin/keybinds.vim                                  > $(DESTDIR)$(CONFIG_DIR)/nvim/plugin/keybinds.vim
	$(setup_file)/configs/nvim/plugin/commands.vim                                  > $(DESTDIR)$(CONFIG_DIR)/nvim/plugin/commands.vim
	$(setup_file)/configs/nvim/plugin/compe.lua                                     > $(DESTDIR)$(CONFIG_DIR)/nvim/plugin/compe.lua
	$(setup_file)/configs/nvim/plugin/gitsigns.lua                                  > $(DESTDIR)$(CONFIG_DIR)/nvim/plugin/gitsigns.lua
	$(setup_file)/configs/nvim/plugin/indent_blankline.lua                          > $(DESTDIR)$(CONFIG_DIR)/nvim/plugin/indent_blankline.lua
	$(setup_file)/configs/nvim/plugin/lsp.lua                                       > $(DESTDIR)$(CONFIG_DIR)/nvim/plugin/lsp.lua
	$(setup_file)/configs/nvim/plugin/neoscroll.lua                                 > $(DESTDIR)$(CONFIG_DIR)/nvim/plugin/neoscroll.lua
	$(setup_file)/configs/nvim/plugin/telescope.lua                                 > $(DESTDIR)$(CONFIG_DIR)/nvim/plugin/telescope.lua
	$(setup_file)/configs/nvim/plugin/treesitter.lua                                > $(DESTDIR)$(CONFIG_DIR)/nvim/plugin/treesitter.lua
	$(setup_file)/configs/nvim/plugin/vimtex.vim                                    > $(DESTDIR)$(CONFIG_DIR)/nvim/plugin/vimtex.vim



