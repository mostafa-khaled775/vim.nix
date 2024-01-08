_: {
  programs.nixvim.plugins = {
    lsp.servers.gopls.enable = true;
    none-ls.sources.diagnostics.golangci_lint.enable = true;
  };
}
