all: zsh-configs

zsh-configs:
	mkdir -p $(DESTDIR)$(HOME)/.zsh/config.d
	mkdir -p $(DESTDIR)$(HOME)/.zsh/completions/git
	mkdir -p $(DESTDIR)$(HOME)/.zsh/functions

	$(setup_file)/configs/zsh/zlogin                                                                 > $(DESTDIR)$(HOME)/.zlogin
	$(setup_file)/configs/zsh/zprofile                                                               > $(DESTDIR)$(HOME)/.zprofile
	$(setup_file)/configs/zsh/zshenv                                                                 > $(DESTDIR)$(HOME)/.zshenv
	$(setup_file)/configs/zsh/zshrc                                                                  > $(DESTDIR)$(HOME)/.zshrc
	$(setup_file)/configs/zsh/config.d/aliases.zsh                                                   > $(DESTDIR)$(HOME)/.zsh/config.d/aliases.zsh
	$(setup_file)/configs/zsh/config.d/bindings.zsh                                                  > $(DESTDIR)$(HOME)/.zsh/config.d/bindings.zsh
	$(setup_file)/configs/zsh/config.d/completion.zsh                                                > $(DESTDIR)$(HOME)/.zsh/config.d/completion.zsh
	$(setup_file)/configs/zsh/config.d/general.zsh                                                   > $(DESTDIR)$(HOME)/.zsh/config.d/general.zsh
	$(setup_file)/configs/zsh/config.d/history.zsh                                                   > $(DESTDIR)$(HOME)/.zsh/config.d/history.zsh
	$(setup_file)/configs/zsh/config.d/plugins.zsh                                                   > $(DESTDIR)$(HOME)/.zsh/config.d/plugins.zsh
	$(setup_file)/configs/zsh/config.d/prompt.zsh                                                    > $(DESTDIR)$(HOME)/.zsh/config.d/prompt.zsh
	$(setup_file)/configs/zsh/config.d/variables.zsh                                                 > $(DESTDIR)$(HOME)/.zsh/config.d/variables.zsh
	$(setup_file)/configs/zsh/completions/_documentation                                             > $(DESTDIR)$(HOME)/.zsh/completions/_documentation

	# clear completion cache
	rm -f $(DESTDIR)$(HOME)/.zcompdump
