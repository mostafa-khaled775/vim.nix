_: {
  programs.nixvim = {
    plugins.todo-comments = {
      enable = true;
      keywords.FIX.icon = "󰣪 ";
    };
    keymaps = [
      {
        action = ''require("todo-comments").jump_next()'';
        key = "]t";
        lua = true;
        mode = [ "n" "v" "o" ];
        options.desc = "Next todo comment";
      }
      {
        action = ''require("todo-comments").jump_prev()'';
        key = "[t";
        lua = true;
        mode = [ "n" "v" "o" ];
        options.desc = "Previous todo comment";
      }
    ];
  };
}
