_: {
  programs.nixvim.plugins = {
    lsp.servers.pylsp.enable = true;
    lsp.servers.ruff-lsp.enable = true;
  };
}
