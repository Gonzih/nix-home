{ config, pkgs, ... }:

{
  imports = [
      ./lib/programs.nix
      ./lib/services.nix
      ./lib/xorg.nix
  ];
  home.packages = (import ./packages/dev.nix pkgs)
  ++ (import ./packages/desktop.nix pkgs);
}
