{ config, pkgs, ... }:

{
  imports = [
      ./lib/files.nix
      ./lib/programs.nix
      ./lib/services.nix
      ./lib/xorg.nix
  ];
  home.packages = (import ./packages/base.nix pkgs)
  ++ (import ./packages/dev.nix pkgs)
  ++ (import ./packages/desktop.nix pkgs);
}