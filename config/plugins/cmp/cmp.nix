{
  plugins = {
    blink-cmp = {
      enable = true;
    };
    # cmp = {
    #   enable = true;
    #   autoEnableSources = true;

    #   # menu = {
    #   #   nvim_lsp = "[LSP]";
    #   #   nvim_lua = "[api]";
    #   #   path = "[path]";
    #   #   luasnip = "[snip]";
    #   #   buffer = "[buffer]";
    #   #   # neorg = "[neorg]";
    #   #   # cmp_tabnine = "[TabNine]";
    #   # };
    #   settings = {
    #     sources = [
    #       { name = "nvim_lsp"; }
    #       { name = "nvim_lsp_signature_help"; }
    #       { name = "nvim_lsp_document_symbol"; }
    #       { name = "treesitter"; }
    #       { name = "path"; }
    #       { name = "buffer"; }
    #       { name = "cmdline"; }
    #     ];
    #     mapping = {
    #       __raw = ''
    #         cmp.mapping.preset.insert({
    #           ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    #           ['<C-f>'] = cmp.mapping.scroll_docs(4),
    #           ['<C-Space>'] = cmp.mapping.complete(),
    #           ['<C-e>'] = cmp.mapping.abort(),
    #           ['<CR>'] = cmp.mapping.confirm({ select = true }),
    #         })
    #       '';

    #       # "<C-d>" = "cmp.mapping.scroll_docs(-4)";
    #       # "<C-f>" = "cmp.mapping.scroll_docs(4)";
    #       # "<C-Space>" = "cmp.mapping.complete()";
    #       # "<C-e>" = "cmp.mapping.close()";
    #       # "<Tab>" = {
    #       #   modes = [
    #       #     "i"
    #       #     "s"
    #       #   ];
    #       #   action = "cmp.mapping.select_next_item()";
    #       # };
    #       # "<S-Tab>" = {
    #       #   modes = [
    #       #     "i"
    #       #     "s"
    #       #   ];
    #       #   action = "cmp.mapping.select_prev_item()";
    #       # };
    #       # "<CR>" = "cmp.mapping.confirm({ select = true })";
    #     };
    #   };
    # };
    # # luasnip.enable = true;

    # # lspkind = {
    # #   enable = true;

    # # };
  };
}
