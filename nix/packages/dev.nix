pkgs:
with pkgs; [
  # autofs5
  # jq
  pprof
  graphviz
  shellcheck
  cmake

  # programming
  doge
  go_1_18
  fzf
  entr
  rustup
  rust-analyzer
  clojure
  clojure-lsp
  nixfmt

  # build
  pkg-config

  # nix tools
  nix-review

  # postgres tools
  postgresql_11

  # docker
  docker-compose

  # networking
  nmap

  # aws
  s3cmd
  aws
  nodePackages.firebase-tools

  redis

  # keyboard
  # qmk_firmware

  bat
  hexyl

  sysbench

  # vulkan tools
  # vulkan-tools
  # vulkan-headers
  # vulkan-loader

  # x11 stuff
  xorg.libX11

  # alsa
  alsaLib

  # arduino
  # arduino-mk
  # avrdude
  # python27Packages.pyserial

  # ew
  nodejs

  # cura
  # cura octoprint dep
  # python37Packages.netifaces
  # blender
  # slic3r
  # openscad

  bear
  wireguard-tools
  qrencode
  tcpdump

  hugo

  inotify-tools

  #c++ dev deps
  ncurses
  gdb

  languagetool

  rnix-lsp

  nodejs

  # scala
  sbt
  bloop
  metals-latest

  python39Packages.pip
  poetry
  conda
  python39Packages.toml
  python39Packages.yapf
  # python38Packages.python-language-server

  # python38Packages.pyls-black
  # python38Packages.pyls-isort
  # python38Packages.pyls-mypy

  # kube shit
  # k9s

  nodePackages.typescript-language-server
  # nodePackages.lerna
  nodePackages.prettier
  # nodePackages.eslint
  # nodePackages.yarn

  netlify-cli
  deno
  electron
  vscode

  ispell
  zig
  zls
]
