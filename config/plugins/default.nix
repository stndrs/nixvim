{
  imports = [
    ./cmp/cmp.nix

    ./editor/whichkey.nix

    ./git/gitsigns.nix

    ./lang/css.nix
    ./lang/docker.nix
    ./lang/html.nix
    ./lang/json.nix
    ./lang/lua.nix
    ./lang/nix.nix
    ./lang/yaml.nix

    ./lsp/conform.nix
    ./lsp/lsp.nix
    ./lsp/trouble.nix

    ./telescope/telescope.nix

    ./theme/default.nix

    ./treesitter/treesitter.nix
    ./treesitter/treesitter-textobjects.nix

    ./ui/flash.nix
    ./ui/bufferline.nix
    ./ui/general.nix
    ./ui/noice.nix
    ./ui/lualine.nix

    ./util/mini.nix
    ./util/snacks.nix
    ./util/persistence.nix
  ];
}
