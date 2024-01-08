{ keymapPrefix, ... }: {
  programs.nixvim.plugins.lsp = {
    enable = true;
    keymaps = {
      diagnostic = {
        "[d" = "goto_prev";
        "]d" = "goto_next";
      };
      lspBuf = {
        K = "hover";
        gr = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
        "${keymapPrefix}r" = "rename";
        "${keymapPrefix}a" = "code_action";
        "${keymapPrefix}d" = "declaration";
        "${keymapPrefix}D" = "definition";
        "${keymapPrefix}f" = "format";
        "${keymapPrefix}K" = "hover";
        "${keymapPrefix}R" = "references";
        "${keymapPrefix}h" = "signature_help";
      };
    };
  };
}
