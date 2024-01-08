{ lspKeymapPrefix, ... }: {
  imports = [
    ./alpha.nix
    ./lualine.nix
    ./todo-comments.nix
    (import ./lsp-lines.nix { inherit lspKeymapPrefix; })
  ];

  programs.nixvim = {
    colorschemes.nord.enable = true;
    autoCmd = [
      {
        event = "TextYankPost";
        callback = {
          __raw =
            "function() require'vim.highlight'.on_yank({ timeout = 150 }) end";
        };
        desc = "highlight recently yanked text";
      }
      {
        event = "LspAttach";
        callback = {
          __raw = ''
            function(args)
              local bufnr = args.buf
              local client = vim.lsp.get_client_by_id(args.data.client_id)
              if client.supports_method("textDocument/documentHighlight") then
                vim.cmd [[
                  autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
                  autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
                ]]
              end
            end
          '';
        };
        desc = "highlight symbol under cursor";
        nested = true;
      }
    ];
    plugins = {
      navic = {
        enable = true;
        click = true;
        highlight = true;
        lazyUpdateContext = true;
        lsp.autoAttach = true;
      };
      specs.enable = true;
      todo-comments.enable = true;
      which-key.enable = true;
      lastplace.enable = true;
      fidget.enable = true;
      nvim-bqf = {
        enable = true;
        autoResizeHeight = true;
      };
    };
  };
}
