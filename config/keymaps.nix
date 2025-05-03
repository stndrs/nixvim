{
  globals.mapleader = " ";

  keymaps = [
    # Files
    {
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>lua Snacks.picker.buffers()<CR>";
      options = {
        silent = true;
        desc = "[F]ind [b]uffers";
      };
    }
    {
      mode = "n";
      key = "<leader>fc";
      action = "<cmd>lua Snacks.picker.files({ cwd = vim.fn.stdpath 'config' })<CR>";
      options = {
        silent = true;
        desc = "[F]ind [c]onfig file";
      };
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>lua Snacks.picker.files()<CR>";
      options = {
        silent = true;
        desc = "[F]ind [f]iles";
      };
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>lua Snacks.picker.git_files()<CR>";
      options = {
        silent = true;
        desc = "[F]ind [g]it files";
      };
    }
    {
      mode = "n";
      key = "<leader>fp";
      action = "<cmd>lua Snacks.picker.projects()<CR>";
      options = {
        silent = true;
        desc = "[F]ind [p]rojects";
      };
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = "<cmd>lua Snacks.picker.recent()<CR>";
      options = {
        silent = true;
        desc = "[F]ind [r]ecent";
      };
    }
    # Grep
    {
      mode = "n";
      key = "<leader>sb";
      action = "<cmd>lua Snacks.picker.lines()<CR>";
      options = {
        silent = true;
        desc = "Buffer lines";
      };
    }
    {
      mode = "n";
      key = "<leader>sB";
      action = "<cmd>lua Snacks.picker.grep_buffers()<CR>";
      options = {
        silent = true;
        desc = "Grep open buffers";
      };
    }
    {
      mode = "n";
      key = "<leader>sg";
      action = "<cmd>lua Snacks.picker.grep()<CR>";
      options = {
        silent = true;
        desc = "Grep files";
      };
    }
    # Navigation
    {
      mode = "n";
      key = "]e";
      action = "<cmd>lua vim.diagnostic.jump({severity = vim.diagnostic.severity.ERROR, count = 1, float = true})<cr>";
      options = {
        silent = true;
        desc = "Next error";
      };
    }
    {
      mode = "n";
      key = "[e";
      action = "<cmd>lua vim.diagnostic.jump({severity = vim.diagnostic.severity.ERROR, count = -1, float = true})<cr>";
      options = {
        silent = true;
        desc = "Previous error";
      };
    }
    {
      mode = "n";
      key = "]d";
      action = "<cmd>lua vim.diagnostic.jump({count = 1, float = true})<cr>";
      options = {
        silent = true;
        desc = "Next diagnostic";
      };
    }

    {
      mode = "n";
      key = "[d";
      action = "<cmd>lua vim.diagnostic.jump({count = -1, float = true})<cr>";
      options = {
        silent = true;
        desc = "Previous diagnostic";
      };
    }

    # Windows
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      options.desc = "Move To Window Up";
    }

    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      options.desc = "Move To Window Down";
    }

    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options.desc = "Move To Window Left";
    }

    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options.desc = "Move To Window Right";
    }

    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-W>c";
      options = {
        silent = true;
        desc = "Delete window";
      };
    }

    {
      mode = "n";
      key = "<leader>-";
      action = "<C-W>s";
      options = {
        silent = true;
        desc = "Split window below";
      };
    }

    {
      mode = "n";
      key = "<leader>|";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window right";
      };
    }

    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save file";
      };
    }

    # Quit/Session
    {
      mode = "n";
      key = "<leader>qq";
      action = "<cmd>quitall<cr><esc>";
      options = {
        silent = true;
        desc = "Quit all";
      };
    }

    # Toggle options
    {
      mode = "n";
      key = "<leader>ul";
      action = ":lua ToggleLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Numbers";
      };
    }

    {
      mode = "n";
      key = "<leader>uL";
      action = ":lua ToggleRelativeLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Relative Line Numbers";
      };
    }

    {
      mode = "n";
      key = "<leader>uw";
      action = ":lua ToggleWrap()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Wrap";
      };
    }

    # Move Lines
    {
      mode = "n";
      key = "<A-Up>";
      action = "<cmd>m .-2<cr>==";
      options.desc = "Move line up";
    }

    {
      mode = "v";
      key = "<A-Up>";
      action = ":m '<-2<cr>gv=gv";
      options.desc = "Move line up";
    }

    {
      mode = "n";
      key = "<A-Down>";
      action = "<cmd>m .+1<cr>==";
      options.desc = "Move line down";
    }

    {
      mode = "v";
      key = "<A-Down>";
      action = ":m '>+1<cr>gv=gv";
      options.desc = "Move line Down";
    }

    # Buffers
    {
      mode = "n";
      key = "<leader>bb";
      action = "<cmd>e #<cr>";
      options.desc = "Switch to other buffer";
    }

    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>lua Snacks.bufdelete.delete()<CR>";
      options.desc = "Delete buffer";
    }

    {
      mode = "n";
      key = "<leader>bo";
      action = "<cmd>lua Snacks.bufdelete.other()<CR>";
      options.desc = "Delete other buffers";
    }
    {
      mode = "n";
      key = "<leader>ba";
      action = "<cmd>lua Snacks.bufdelete.all()<CR>";
      options.desc = "Delete all buffers";
    }

    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>bprevious<cr>";
      options.desc = "Prev buffer";
    }

    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>bnext<cr>";
      options.desc = "Next buffer";
    }

    # Better indenting
    {
      mode = "v";
      key = "<";
      action = "<gv";
    }

    {
      mode = "v";
      key = ">";
      action = ">gv";
    }

    {
      mode = "i";
      key = "<C-a>";
      action = "<cmd> norm! ggVG<cr>";
      options.desc = "Select all lines in buffer";
    }

    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options.desc = "Allow cursor to stay in the same place after appending to current line ";
    }

    # {
    #   mode = "n";
    #   key = "<C-d>";
    #   action = "<C-d>zz";
    #   options.desc = "Allow C-d and C-u to keep the cursor in the middle";
    # }
    #
    # {
    #   mode = "n";
    #   key = "<C-u>";
    #   action = "<C-u>zz";
    #   options.desc = "Allow C-d and C-u to keep the cursor in the middle";
    # }

    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options.desc = "Allow search terms to stay in the middle";
    }

    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options.desc = "Allow search terms to stay in the middle";
    }

    # Clear search with ESC
    {
      mode = [
        "n"
        "i"
      ];
      key = "<esc>";
      action = "<cmd>noh<cr><esc>";
      options = {
        silent = true;
        desc = "Escape and clear hlsearch";
      };
    }

    # Paste stuff without saving the deleted word into the buffer
    {
      mode = "x";
      key = "p";
      action = "\"_dP";
      options.desc = "Deletes to void register and paste over";
    }

    # Copy stuff to system clipboard with <leader> + y or just y to have it just in vim
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>y";
      action = "\"+y";
      options.desc = "Copy to system clipboard";
    }

    # Delete to void register
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>D";
      action = "\"_d";
      options.desc = "Delete to void register";
    }
  ];
  extraConfigLua = ''
    function ToggleLineNumber()
    if vim.wo.number then
      vim.wo.number = false
    else
      vim.wo.number = true
      vim.wo.relativenumber = false
      end
    end

    function ToggleRelativeLineNumber()
    if vim.wo.relativenumber then
      vim.wo.relativenumber = false
    else
      vim.wo.relativenumber = true
      vim.wo.number = false
      end
    end

    function ToggleWrap()
        vim.wo.wrap = not vim.wo.wrap
    end

     if vim.lsp.inlay_hint then
       vim.keymap.set('n', '<leader>uh', function()
         vim.lsp.inlay_hint(0, nil)
       end, { desc = 'Toggle Inlay Hints' })
     end
  '';
}
