_: {
  programs.nixvim.plugins = {
    lsp.servers.rust-analyzer = {
      enable = true;
      installRustc = true;
      installCargo = true;
    };
    crates-nvim.enable = true;
  };
}
