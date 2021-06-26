DOTFILES = nix/lib/dotfiles/.bin nix/lib/dotfiles/.vim nix/lib/dotfiles/.vifm nix/lib/dotfiles/.mc nix/lib/dotfiles/.fish nix/lib/dotfiles/.xmonad nix/lib/dotfiles/.mutt nix/lib/dotfiles/plugin-foreign-env

switch: dotfiles
	home-manager switch -b old

build: dotfiles
	home-manager build

nix/lib/dotfiles/.vim:
	git clone git@github.com:Gonzih/.vim.git $@

nix/lib/dotfiles/.vifm:
	git clone git@github.com:Gonzih/.vifm.git $@

nix/lib/dotfiles/.bin:
	git clone git@github.com:Gonzih/.bin.git $@

nix/lib/dotfiles/.mc:
	git clone git@github.com:Gonzih/.mc.git $@

nix/lib/dotfiles/.fish:
	git clone git@github.com:Gonzih/.fish.git $@

nix/lib/dotfiles/.xmonad:
	git clone git@github.com:Gonzih/.xmonad.git $@

nix/lib/dotfiles/.mutt:
	git clone git@github.com:Gonzih/.mutt.git $@

nix/lib/dotfiles/plugin-foreign-env:
	git clone https://github.com/oh-my-fish/plugin-foreign-env.git $@

dotfiles: $(DOTFILES) nix/lib/dotfiles/.dein

dotfiles-update: dotfiles dotfiles-stash dotfiles-pull dotfiles-pop

dotfiles-stash: $(DOTFILES)
	$(foreach path,$(DOTFILES),cd $(shell pwd)/$(path) && git stash || echo "Nothing to stash";)

dotfiles-pull: $(DOTFILES)
	$(foreach path,$(DOTFILES),cd $(shell pwd)/$(path) && git pull;)

dotfiles-pop: $(DOTFILES)
	$(foreach path,$(DOTFILES),cd $(shell pwd)/$(path) && git stash pop || echo "No stash";)

gc:
	home-manager expire-generations "-1 day"

dein-installer.sh:
	curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein-installer.sh

.PHONY: clean
clean:
	rm dein-installer.sh

nix/lib/dotfiles/.dein:
	$(MAKE) dein-installer.sh
	sh dein-installer.sh $@
	$(MAKE) clean
