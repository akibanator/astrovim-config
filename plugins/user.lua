return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup {
        options = {
          colorblind = {
            enable = true,
            severity = {
              protan = 1,
              deutan = 0.8,
            },
          },
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
          },
          modules = {
            aerial = true,
            cmp = true,
            ["dap-ui"] = true,
            dashboard = true,
            diagnostic = true,
            gitsigns = true,
            native_lsp = true,
            neotree = true,
            notify = true,
            symbol_outline = true,
            telescope = true,
            treesitter = true,
            whichkey = true,
          },
        },
      }
    end,
  }, -- lazy
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "BufRead",
    config = function() require("todo-comments").setup() end,
  },
  {
    "akinsho/toggleterm.nvim",
    cmd = { "ToggleTerm", "TermExec" },
    opts = {
      size = 10,
      on_create = function()
        vim.opt.foldcolumn = "0"
        vim.opt.signcolumn = "no"
      end,
      open_mapping = [[<F7>]],
      shading_factor = 2,
      direction = "tab",
      float_ops = {
        border = "curved",
        highlights = { border = "Normal", background = "Normal" },
      },
      start_in_insert = true,
    },
  },
}
