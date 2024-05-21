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
        options.desc = "Next hunk";
      }
      {
        mode = "n";
        key = "[h";
        action = "<cmd>Gitsigns prev_hunk<cr>";
        options.desc = "Previous hunk";
      }

      # staging
      {
        mode = "n";
        key = "${gitKeymapPrefix}s";
        action = "<cmd>Gitsigns stage_hunk<cr>";
        options.desc = "Stage hunk";
      }
      {
        mode = "n";
        key = "${gitKeymapPrefix}S";
        action = "<cmd>Gitsigns stage_buffer<cr>";
        options.desc = "Stage buffer";
      }

      # restoring
      {
        mode = "n";
        key = "${gitKeymapPrefix}r";
        action = "<cmd>Gitsigns reset_hunk<cr>";
        options.desc = "Reset hunk";
      }
      {
        mode = "n";
        key = "${gitKeymapPrefix}R";
        action = "<cmd>Gitsigns reset_buffer<cr>";
        options.desc = "Reset buffer";
      }

      #actions
      {
        mode = "n";
        key = "${gitKeymapPrefix}a";
        action = "<cmd>Gitsigns get_actions<cr>";
        options.desc = "Get git actions";
      }

      # diffing
      {
        mode = "n";
        key = "${gitKeymapPrefix}d";
        action = "<cmd>Gitsigns diffthis<cr>";
        options.desc = "Diff current buffer";
      }

      # preview
      {
        mode = "n";
        key = "${gitKeymapPrefix}p";
        action = "<cmd>Gitsigns preview_hunk<cr>";
        options.desc = "Preview hunk";
      }

      # show blame
      {
        mode = "n";
        key = "${gitKeymapPrefix}b";
        action = "<cmd>Gitsigns blame_line<cr>";
        options.desc = "Blame line";
      }
    ];
  };
}
