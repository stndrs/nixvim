{
  plugins = {
    lsp-signature.enable = true;
    lsp-status.enable = true;
    fidget.enable = true;

    lsp = {
      enable = true;
      servers = {
        gleam.enable = true;
        erlangls.enable = true;
        ruby_lsp.enable = true;
      };
      keymaps.lspBuf = {
        "K" = "hover";
        "rn" = "rename";
        "ca" = "code_action";
        # "gi" = "implementation";
        # "gd" = "definition";
        # "gt" = "type_definition";
      };
    };
    lint.enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>cl";
      action = "<cmd>LspInfo<cr>";
      options.desc = "Lsp Info";
    }
  ];
}
