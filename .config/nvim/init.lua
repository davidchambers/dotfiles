vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.mapleader = " "
vim.g.python3_host_prog = "$HOME/.asdf/shims/python3"

vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.wrap = false
vim.opt.statusline = "%2*%{mode()}%1* %f %m%r%=%3*%{&filetype} %{&fileformat} %v%1* %l/%L"
vim.opt.fillchars = { msgsep = "─" }
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.cmd("colorscheme prussian-blue")

vim.filetype.add({
  filename = {
    [".bash_profile"] = "bash",
    [".bashrc"] = "bash",
  },
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "hls",
        "kotlin_language_server",
        "lua_ls",
        "tsserver",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.hls.setup({
        filetypes = { "haskell", "lhaskell", "cabal" },
      })
      lspconfig.kotlin_language_server.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
        },
      })
      vim.keymap.set("n", "<leader>fb", vim.lsp.buf.format, {})
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_config = {
            horizontal = {
              width = { padding = 0 },
              height = { padding = 0 },
              preview_width = 156 / 2 - 2,
              prompt_position = "top",
            },
          },
          sorting_strategy = "ascending",
          borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
          prompt_prefix = " ",
        },
        pickers = {
          find_files = {
            disable_devicons = true,
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>ft", builtin.live_grep, {})
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        filetypes = { "*" },
        user_default_options = {
          RGB = true,
          RRGGBB = true,
          names = false,
          tailwind = true,
        },
        buftypes = {},
      })
    end,
  },
  {
    "tummetott/unimpaired.nvim",
    opts = {},
  },
  {
    "kylechui/nvim-surround",
    version = "2.1.5",
    event = "VeryLazy",
    opts = {},
  },
})
