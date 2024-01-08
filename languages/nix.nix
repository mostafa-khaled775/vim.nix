_: {
  programs.nixvim.plugins = {
    nix.enable = true;
    nix-develop.enable = true;
    lsp.servers.nil_ls.enable = true;
    none-ls.sources = {
      code_actions.statix.enable = true;
      diagnostics.statix.enable = true;
      formatting.nixfmt.enable = true;
    };
  };
}
