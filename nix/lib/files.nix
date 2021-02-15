{ config, pkgs, ... }:

{
  home.file = {
    ".vim" = {
      source = dotfiles/.vim;
    };
    ".vimrc" = {
      source = dotfiles/.vim/vimrc;
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
    ".config/plugin-foreign-env" = {
      source = dotfiles/plugin-foreign-env;
    };
  };
}
