{ config, pkgs, ... }:

{
  imports = [
      ./lib/files.nix
      (import ./lib/programs.nix {
        inherit config pkgs;
        alacrittyFontSize = 9.0;
        alacrittyGlyphOffset = {
          x = 0;
          y = 1;
        };
      })
      ./lib/services.nix
      ./lib/xorg.nix
      ./lib/fonts.nix
      ./lib/overlays/overlays.nix
  ];
  home.packages = (import ./packages/base.nix pkgs)
  ++ (import ./packages/dev.nix pkgs)
  ++ (import ./packages/android-dev.nix pkgs)
  ++ (import ./packages/gaming.nix pkgs)
  ++ (import ./packages/streaming.nix pkgs)
  ++ (import ./packages/desktop.nix pkgs);

  programs.git.signing.key = "E098E40080AE48C3";
}
