_: {
  programs.nixvim.plugins = {
    treesitter = {
      enable = true;
      indent = true;
      nixvimInjections = true;
#       queries.nix.ts-query = ''
# (binding
#   attrpath: (attrpath
#   attr:   
# (identifier) @query-id
# (identifier) @filetype
# (identifier) @query-name
# (#eq? @query-id "queries")
# )
# expression:
# (indented_string_expression (string_fragment) @query)
# ) @query-binding
#       '';
    };
    treesitter-textobjects = {
      enable = true;
      select = {
        enable = true;
        keymaps = {
          "af" = "@function.outer";
          "if" = "@function.inner";
          "ac" = "@class.outer";
          "ic" = "@class.inner";
          "ir" = "@return.inner";
          "ar" = "@return.outer";
          "is" = "@scope.inner";
          "as" = "@scope.outer";
        };
        lookahead = true;
      };
    };
    treesitter-context.enable = true;
    ts-context-commentstring.enable = true;
  };
}
