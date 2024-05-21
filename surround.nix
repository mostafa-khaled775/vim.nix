{ pkgs, ... }: {
  programs.nixvim.extraPlugins = [ pkgs.vimPlugins.nvim-surround ];
  programs.nixvim.extraConfigLua = ''
  require 'nvim-surround'.setup( { } )
  '';
}
