{
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "nvim_lsp_signature_help"; }
          { name = "nvim_lsp_document_symbol"; }
          { name = "treesitter"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "cmdline"; }
        ];
      };
    };
  };
}
