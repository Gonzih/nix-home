{ config, pkgs, ... }:

{
  #programs.jq.enable = true;
  programs.htop.enable = true;

  programs.ssh = {
    enable = true;
    matchBlocks = {
      "home-network" = {
        hostname = "192.168.2.*";
        forwardAgent = true;
        forwardX11 = false;
      };
    };
  };

  programs.gpg.enable = true;
  # programs.fish.enable = true;

  programs.alacritty = {
    enable = true;
    settings = {
      TERM = "xterm-256color";
      window = {
        dynamic_title = true;
        padding = {
          x = 0;
          y = 0;
        };
      };
      scrolling = {
        history = 100000;
        multiplier = 3;
      };
      font = {
        normal = {
          family = "Victor Mono";
          style = "Medium";
        };
        bold = {
          family = "Victor Mono";
          style = "Bold";
        };
        italic = {
          family = "Victor Mono";
          style = "Italic";
        };
        offset = {
          x = 0;
          y = 0;
        };
        glyph_offset = {
          x = 0;
          y = 2;
        };
        use_thin_strokes = true;
      };

      draw_bold_text_with_bright_colors = true;

      colors = {
        primary = {
          background = "0x000000";
          foreground = "0xffffff";
        };
        cursor= {
          text   = "0xF81CE5";
          cursor = "0xffffff";
        };

        normal = {
          black   = "0x000000";
          red     = "0xfe0100";
          green   = "0x33ff00";
          yellow  = "0xfeff00";
          blue    = "0x0066ff";
          magenta = "0xcc00ff";
          cyan    = "0x00ffff";
          white   = "0xd0d0d0";
        };

        bright = {
          black   = "0x808080";
          red     = "0xfe0100";
          green   = "0x33ff00";
          yellow  = "0xfeff00";
          blue    = "0x0066ff";
          magenta = "0xcc00ff";
          cyan    = "0x00ffff";
          white   = "0xFFFFFF";
        };
      };
      mouse_bindings = [
        { mouse = "Middle"; action = "PasteSelection"; }
      ];
    };
  };

  programs.git = {
    enable = true;
    aliases = {
      co = "checkout";
      gloc = "log --graph";
      st = "status -s";
      ci = "commit --verbose";
      w = "whatchanged";
      br = "branch";
      hist = "!tig";
      lg = "!git log --graph --color=always --abbrev-commit --date=relative --pretty=format:'%x00%h%x00%s%x00%cd%x00%an%x00%d' | gawk -F '\\0' '{ printf \"%s\\033[31m%s\\033[0m %-80s \\033[32m%14s\\033[0m \\033[30;1m%s\\033[0m\\033[33m%s\\n\", $1, $2, gensub(/(.{79}).{2,}/, \"\\\\1…\",\"g\",$3), $4, $5, $6 }' | less -R";
      wdiff = "diff --color-words";
      todo = "grep -n -e TODO -e FIXME -e XXX -e OPTIMIZE";
    };
    userName = "Max Gonzih";
    userEmail = "gonzih@gmail.com";
    signing = {
      signByDefault = true;
    };
    extraConfig = {
      color  = {
        diff = "auto";
        status = "auto";
        branch = "auto";
        interactive = "auto";
        ui = true;
        pager = true;
      };
      core = {
        pager = "less -FRSX";
        whitespace = "fix,-indent-with-non-tab,trailing-space,cr-at-eol,space-before-tab";
        excludesfile = "/home/gnzh/.gitignore.global";
        editor = "vim";
      };
      apply = {
        whitespace = "fix";
      };
      push = {
        default = "simple";
      };
      pull = {
        rebase = true;
      };
      grep = {
        lineNumber = true;
      };
      help = {
        autocorrect = 0;
      };
      branch = {
        autosetuprebase = "always";
      };
      rebase = {
        autostash = true;
        instructionFormat = "(%an <%ae>) %s";
      };
      rerere = {
        enabled = true;
      };
      lfs = {
        enable = true;
      };
      "filter \"lfs\"" = {
        reguired = true;
        process = "git-lfs filter-process";
        clean = "git-lfs clean -- %f";
        smudge = "git-lfs smudge -- %f";
      };
      "color \"branch\"" = {
        current = "yellow reverse";
        local = "yellow";
        remote = "green";
        untracked = "cyan";
      };
      "color \"diff\"" = {
        meta = "yellow bold";
        frag = "magenta bold";
        old = "red bold";
        new = "green bold";
      };
      "color \"status\"" = {
        added = "yellow";
        changed = "green";
        untracked = "cyan";
      };
      merge = {
        tool = "nvim";
      };
      "mergetool \"nvim\"" = {
        cmd = "nvim -f -c \"Gvdiff\" \"$MERGED\"";
      };
    };
  };
}
