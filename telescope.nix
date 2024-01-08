{ keymapPrefix, lspKeymapPrefix, ... }: {
  programs.nixvim.plugins.telescope = {
    enable = true;
    extensions = {
      undo.enable = true;
      frecency.enable = true;
      file_browser.enable = true;
    };
    keymaps = {
      "${keymapPrefix}g" = "live_grep";
      "${keymapPrefix}f" = "find_files";
      # "${keymapPrefix}F" = "file_browser";
      "${keymapPrefix}b" = "buffers";
      "${keymapPrefix}c" = "commands";
      "${keymapPrefix}h" = "help_tags";
      "${keymapPrefix}s" = "lsp_document_symbols";
      "${keymapPrefix}S" = "lsp_workspace_symbols";
      "${keymapPrefix}t" = "filetypes";
      "${lspKeymapPrefix}s" = "lsp_document_symbols";
      "${lspKeymapPrefix}S" = "lsp_workspace_symbols";
    };
  };
}
