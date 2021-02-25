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
      metals-latest = pkgs.metals.overrideAttrs(old: rec {
        pname = "metals";
        version = "0.10.0";

        deps = pkgs.metals.deps.overrideAttrs(old: {
          name = "${pname}-deps-${version}";
          buildCommand = ''
            export COURSIER_CACHE=$(pwd)
            ${pkgs.coursier}/bin/coursier fetch org.scalameta:metals_2.12:${version} \
            -r bintray:scalacenter/releases \
            -r sonatype:snapshots > deps
            mkdir -p $out/share/java
            cp -n $(< deps) $out/share/java/
          '';
          outputHash     = "1v9br6nad6yhq9y1z4b9z6xdsjrgqh7wlxww7vp7ws28cg85mqyg";
        });
        buildInputs = [ pkgs.jdk deps ];
      });
    })
  ];
}
