{ config, pkgs, ... }:

{
  home.file = {
    ".vim" = {
      source = dotfiles/.vim;
    };
    ".vimrc" = {
      source = dotfiles/.vim/vimrc;
    };
    ".vifm" = {
      source = dotfiles/.vifm;
    };
    ".config/mc" = {
      source = dotfiles/.mc;
    };
    ".config/fish" = {
      source = dotfiles/.fish;
    };
    ".xmonad" = {
      source = dotfiles/.xmonad;
    };
    ".mutt" = {
      source = dotfiles/.mutt;
    };
    ".gitignore.global" = {
      source = dotfiles/.gitignore.global;
    };
    ".tmux.conf" = {
      source = dotfiles/.tmux.conf;
    };
    "bin" = {
      source = dotfiles/.bin;
    };
  };
}
