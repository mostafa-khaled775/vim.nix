_: {
  programs.nixvim.plugins.luasnip = {
    enable = true;
    extraConfig = { updateevents = "TextChanged,TextChangedI"; };
    fromLua = [
    ];
  };
}
