{ pkgs, ... }:
{
  imports = [
    ./autocmd.nix
    ./keymaps.nix
    ./lazy.nix
    ./settings.nix
    ./plugins
  ];

  extraPackages = with pkgs; [
    fd
    fzf
    ghostscript
    imagemagick
    lazygit
    mermaid-cli
    ripgrep
    texliveSmall
  ];
}
