{ lspKeymapPrefix, ... }: {
  programs.nixvim = {
    plugins.lsp-lines.enable = false;
    plugins.lsp-lines.currentLine = true;
    keymaps = [{
      action = "require 'lsp_lines'.toggle";
      mode = [ "n" ];
      key = "${lspKeymapPrefix}l";
      lua = true;
      options.desc = "Toggle lsp lines";
    }];
  };
}
