{ config, pkgs, ... }:

{
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
        size = 7.0;
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
}
