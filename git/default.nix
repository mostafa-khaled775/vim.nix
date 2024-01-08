{ gitKeymapPrefix, ... }: {
  programs.nixvim.plugins = {
    neogit = {
      enable = true;
      integrations.diffview = true;
    };
    none-ls.sources.diagnostics.gitlint.enable = true;
  };

  imports = [ (import ./gitsigns.nix { inherit gitKeymapPrefix; }) ];
}
