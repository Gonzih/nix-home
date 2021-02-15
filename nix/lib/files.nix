{ config, pkgs, ... }:

{
  home.file = {
    ".vim".source              = config.lib.file.mkOutOfStoreSymlink dotfiles/.vim;
    ".vimrc".source            = config.lib.file.mkOutOfStoreSymlink dotfiles/.vim/vimrc;
    ".vifm".source             = config.lib.file.mkOutOfStoreSymlink dotfiles/.vifm;
    ".config/mc".source        = config.lib.file.mkOutOfStoreSymlink dotfiles/.mc;
    ".config/fish".source      = config.lib.file.mkOutOfStoreSymlink dotfiles/.fish;
    ".xmonad".source           = config.lib.file.mkOutOfStoreSymlink dotfiles/.xmonad;
    ".mutt".source             = config.lib.file.mkOutOfStoreSymlink dotfiles/.mutt;
    ".gitignore.global".source = config.lib.file.mkOutOfStoreSymlink dotfiles/.gitignore.global;
    ".tmux.conf".source        = config.lib.file.mkOutOfStoreSymlink dotfiles/.tmux.conf;
    "bin".source               = config.lib.file.mkOutOfStoreSymlink dotfiles/.bin;
  };
}
