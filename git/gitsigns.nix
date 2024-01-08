{ gitKeymapPrefix, ... }: {
  programs.nixvim = {
    plugins = {
      none-ls.sources.code_actions.gitsigns.enable = true;
      gitsigns = { enable = true; };
    };
    keymaps = [
      # moving to hunks
      {
        mode = "n";
        key = "]h";
        action = "<cmd>Gitsigns next_hunk<cr>";
      }
      {
        mode = "n";
        key = "[h";
        action = "<cmd>Gitsigns prev_hunk<cr>";
      }

      # staging
      {
        mode = "n";
        key = "${gitKeymapPrefix}gs";
        action = "<cmd>Gitsigns stage_hunk<cr>";
      }
      {
        mode = "n";
        key = "${gitKeymapPrefix}gS";
        action = "<cmd>Gitsigns stage_buffer<cr>";
      }

      # restoring
      {
        mode = "n";
        key = "${gitKeymapPrefix}gr";
        action = "<cmd>Gitsigns reset_hunk<cr>";
      }
      {
        mode = "n";
        key = "${gitKeymapPrefix}gR";
        action = "<cmd>Gitsigns reset_buffer<cr>";
      }

      #actions
      {
        mode = "n";
        key = "${gitKeymapPrefix}ga";
        action = "<cmd>Gitsigns get_actions<cr>";
      }

      # diffing
      {
        mode = "n";
        key = "${gitKeymapPrefix}gd";
        action = "<cmd>Gitsigns diffthis<cr>";
      }

      # preview
      {
        mode = "n";
        key = "${gitKeymapPrefix}gp";
        action = "<cmd>Gitsigns preview_hunk<cr>";
      }

      # show blame
      {
        mode = "n";
        key = "${gitKeymapPrefix}gb";
        action = "<cmd>Gitsigns blame_line<cr>";
      }
    ];
  };
}
