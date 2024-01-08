_: {
  programs.nixvim.plugins.lualine = {
    enable = true;
    componentSeparators = {
      left = "";
      right = "";
    };
    sectionSeparators = {
      left = "";
      right = "";
    };
    sections.lualine_x = [ "encoding" "filetype" ];
  };
}
