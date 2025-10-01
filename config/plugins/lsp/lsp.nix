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
        ruby_lsp = {
          enable = true;
          settings = {
            init_options = {
              formatter = "standard";
              linters = [ "standard" ];
            };
            root_markers = [
              ".git/"
              "Gemfile"
            ];
          };
        };
        sorbet = {
          enable = true;
          cmd = [
            "bundle"
            "exec"
            "srb"
            "tc"
            "--lsp"
            "--enable-experimental-rbs-signatures"
            "--cache-dir=/tmp/sorbet-cache"
          ];
          filetypes = [ "ruby" ];
          settings = {
            init_options = {
              highlightUntyped = true;
              supportsSorbetURIs = true;
            };
          };
          rootMarkers = [ "Gemfile" ];
          # cmd = { 'bundle', 'exec', 'srb', 'tc', '--lsp', '--enable-experimental-rbs-signatures', '--cache-dir=/tmp/sorbet-cache' },
          # filetypes = { 'ruby' },
          # init_options = {
          #   highlightUntyped = true,
          #   supportsSorbetURIs = true,
          # },
          # root_file = vim.fs.dirname(vim.fs.find('Gemfile', { upward = true })[1]),

        };
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
