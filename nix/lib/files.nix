{ config, pkgs, ... }:

let
  ln = config.lib.file.mkOutOfStoreSymlink;
in
{
  home.file = {
    ".vim".source                                 = ln dotfiles/.vim;
    ".vimrc".source                               = ln dotfiles/.vim/vimrc;
    ".config/nvim".source                         = ln dotfiles/.vim;
    ".vifm".source                                = ln dotfiles/.vifm;
    ".config/mc".source                           = ln dotfiles/.mc;
    ".config/fish".source                         = ln dotfiles/.fish;
    ".xmonad".source                              = ln dotfiles/.xmonad;
    ".mutt".source                                = ln dotfiles/.mutt;
    ".gitignore.global".source                    = ln dotfiles/.gitignore.global;
    ".tmux.conf".source                           = ln dotfiles/.tmux.conf;
    "bin".source                                  = ln dotfiles/.bin;
    ".config/plugin-foreign-env".source           = ln dotfiles/plugin-foreign-env;
    ".cache/dein".source                          = ln dotfiles/.dein;
    ".config/rofi/config.rasi".source             = ln dotfiles/.rofi/config.rasi;
    ".config/rofi/gruvbox-common.inc.rasi".source = ln dotfiles/.rofi/gruvbox-common.inc.rasi;
    ".config/pycodestyle".source                  = ln dotfiles/pycodestyle;
    ".spacemacs".source                           = ln dotfiles/.spacemacs;
  };
}
