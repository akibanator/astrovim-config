-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- 0 is now ^
    ["0"] = { "^" },
    -- Center the cursor after scrolling
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    -- Center the cursor after search
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    -- Custom binds for makefile
    ["<leader>m"] = { name = " Makefile" },
    ["<leader>mm"] = { "<cmd>1TermExec cmd='make' dir=./<cr>", desc = "make" },
    ["<leader>mr"] = { "<cmd>1TermExec cmd='make run' dir=./<cr>", desc = "make run" },
    ["<leader>mv"] = { "<cmd>1TermExec cmd='make runv' dir=./<cr>", desc = "make runv" },
    ["<leader>mc"] = { "<cmd>1TermExec cmd='make clean' dir=./<cr>", desc = "make clean" },
    ["<leader>mf"] = { "<cmd>1TermExec cmd='make fclean' dir=./<cr>", desc = "make fclean" },
    ["<leader>mR"] = { "<cmd>1TermExec cmd='make re' dir=./<cr>", desc = "make re" },
    ["<leader>md"] = { "<cmd>1TermExec cmd='make debug' dir=./<cr>", desc = "make debug" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    -- Insert tab char
    --["<C-l>"] = { "<C-v><Tab>" },
  },
}
