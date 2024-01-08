_: {
  programs.nixvim.plugins = {
    lspkind = {
      enable = true;
      mode = "symbol";
    };

    nvim-cmp = {
      enable = true;
      autoEnableSources = true;

      experimental = { ghost_text = true; };

      sources = [
        { name = "crates"; }
        { name = "luasnip"; }
        { name = "nvim_lsp"; }
        { name = "buffer"; }
      ];

      mapping = {
        "<C-n>" = "cmp.mapping.select_next_item()";
        "<C-p>" = "cmp.mapping.select_prev_item()";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.close()";
        "<CR>" =
          "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })";
      };

      formatting = { fields = [ "kind" "abbr" "menu" ]; };

      # mappingPresets = [ "insert" ];

      snippet.expand = "luasnip";
    };
  };
}
