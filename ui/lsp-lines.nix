{ lspKeymapPrefix, ... }: {
  programs.nixvim = {
    plugins.lsp-lines.enable = true;
    keymaps = [{
      action = "require 'lsp_lines'.toggle";
      mode = [ "n" ];
      key = "${lspKeymapPrefix}l";
      lua = true;
      options.desc = "Toggle lsp lines";
    }];
  };
}
