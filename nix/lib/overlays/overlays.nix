{ config, pkgs, ... }:

{
  nixpkgs.overlays =
    [ (self: super: {
      go-air = pkgs.buildGoModule rec {
        pname = "air";
        version = "1.15.1";

        src = pkgs.fetchFromGitHub {
          owner = "cosmtrek";
          repo = "air";
          rev = "v${version}";
          sha256 = "0d34k8hyag84j24bhax4gvg8mkzqyhdqd16rfirpfjiqvqh0vdkz";
        };

        vendorSha256 = "0k28rxnd0vyb6ljbi83bm1gl7j4r660a3ckjxnzc2qzwvfj69g53";
        subPackages = [ "." ];
      };
    })
  ];
}
