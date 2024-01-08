_: {
  programs.nixvim.plugins.vim-matchup = {
    enable = true;
    enableTransmute = true;
    enableSurround = true;
    treesitterIntegration.enable = true;
  };
}
