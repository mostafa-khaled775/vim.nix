_: {
  programs.nixvim.plugins = {
    none-ls.sources = {
      formatting.beautysh.enable = true;
      code_actions.shellcheck.enable = true;
      diagnostics.shellcheck.enable = true;
    };
    lsp.servers.bashls.enable = true;
  };
}
