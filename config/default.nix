{ pkgs, ... }:
{
  imports = [
    ./autocmd.nix
    ./keymaps.nix
    ./settings.nix
    ./plugins
  ];

  extraPackages = with pkgs; [
    fd
    fzf
    gleam
    ghostscript
    imagemagick
    lazygit
    lua-language-server
    mermaid-cli
    ripgrep
    texliveSmall
    sqlite
  ];
}
