{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        incremental_selection.enable = true;
        indent.enable = true;
      };
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        c
        css
        diff
        dockerfile
        erlang
        gitignore
        gleam
        html
        javascript
        json
        latex
        lua
        luadoc
        markdown
        nix
        query
        regex
        scss
        toml
        vim
        vimdoc
        yaml
      ];
      nixvimInjections = true;
    };
    treesitter-context.enable = true;
  };
}
