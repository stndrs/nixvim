{ pkgs, ... }:
{
  plugins = {
    telescope = {
      enable = true;

      extensions = {
        fzf-native.enable = true;
        undo.enable = true;
        ui-select = {
          settings = {
            specific_opts = {
              codeactions = true;
            };
          };
        };
      };

      settings.defaults = {
        prompt_prefix = "   ";
        color_devicons = true;
        set_env.COLORTERM = "truecolor";

        mappings = {
          i = {
            # Have Telescope not to enter a normal-like mode when hitting escape (and instead exiting), you can map <Esc> to do so via:
            "<esc>".__raw = ''
              function(...)
                return require("telescope.actions").close(...)
              end'';
            "<c-t>".__raw = ''
              function(...)
                require('trouble.providers.telescope').open_with_trouble(...);
              end
            '';
          };
          n = {
            "<c-t>".__raw = ''
              function(...)
                require('trouble.providers.telescope').open_with_trouble(...);
              end
            '';
          };
        };

        vimgrep_arguments = [
          "${pkgs.ripgrep}/bin/rg"
          "--color=never"
          "--no-heading"
          "--with-filename"
          "--line-number"
          "--column"
          "--smart-case"
          "--trim"
        ];
      };

      keymaps = {
        "<leader>/" = {
          action = "live_grep";
          options.desc = "Grep (root dir)";
        };
        "<leader>ff" = {
          action = "find_files";
          options.desc = "Find project files";
        };
        "<leader>fr" = {
          action = "oldfiles";
          options.desc = "Recent";
        };
        "<c-p>" = {
          mode = [
            "n"
            "i"
          ];
          action = "registers";
          options.desc = "Select register to paste";
        };
        "<leader>gc" = {
          action = "git_commits";
          options.desc = "commits";
        };
        "<leader>sa" = {
          action = "autocommands";
          options.desc = "Auto Commands";
        };
        "<leader>sc" = {
          action = "commands";
          options.desc = "Commands";
        };
        "<leader>sd" = {
          action = "diagnostics bufnr=0";
          options.desc = "Workspace diagnostics";
        };
        "<leader>sh" = {
          action = "help_tags";
          options.desc = "Help pages";
        };
        "<leader>sk" = {
          action = "keymaps";
          options.desc = "Key maps";
        };
        "<leader>sM" = {
          action = "man_pages";
          options.desc = "Man pages";
        };
        "<leader>sm" = {
          action = "marks";
          options.desc = "Jump to Mark";
        };
        "<leader>so" = {
          action = "vim_options";
          options.desc = "Options";
        };
        "<leader>st" = {
          action = "todo-comments";
          options.desc = "Search Todo";
        };
        "<leader>uC" = {
          action = "colorscheme";
          options.desc = "Colorscheme preview";
        };
      };
    };
  };
}
