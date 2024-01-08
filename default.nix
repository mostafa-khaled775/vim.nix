{ pkgs, config, lib, ... }:
let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    ref = "nixos-23.11";
  });
  leader = "<space>";
  lspKeymapPrefix = "${leader}l";
  telescopeKeymapPrefix = "${leader}f";
  gitKeymapPrefix = "${leader}g";
in {
  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url =
        "https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz";
    }))
  ];
  imports = [
    # For home-manager
    nixvim.homeManagerModules.nixvim
    (import ./ui { inherit lspKeymapPrefix config lib; })

    # fuzzy searching
    (import ./telescope.nix {
      keymapPrefix = telescopeKeymapPrefix;
      inherit lspKeymapPrefix;
    })

    (import ./git { inherit gitKeymapPrefix; })

    # language support (general)
    (import ./lsp.nix { keymapPrefix = lspKeymapPrefix; })
    ./refactoring.nix
    ./neogen.nix
    ./treesitter.nix
    ./none-ls.nix

    # language support (specific)
    ./languages

    # motion
    ./matchup.nix

    # editing
    ./comment.nix
    ./cmp.nix
    ./luasnip.nix
  ];

  programs.nixvim = {
    enable = true;
    clipboard.providers = {
      wl-copy.enable = true;
      xclip.enable = true;
    };
    # improves startup times
    luaLoader.enable = true;
    package = pkgs.neovim-nightly;
    keymaps = [
      {
        mode = "i";
        key = "jk";
        action = "<esc>";
      }
      {
        mode = "i";
        key = "Jk";
        action = "<esc>";
      }
      {
        mode = "i";
        key = "JK";
        action = "<esc>";
      }
    ];
    options = {
      number = true; # Show line numbers
      shiftwidth = 2; # Tab width should be 2
      softtabstop = 2; # number of spaces inserted when pressing tab

      cursorline = true; # highlight cursor line

      # better searching
      ignorecase = true;
      smartcase = true;

      compatible = false;

      lazyredraw = true;

      updatetime = 300;
    };
  };
}
