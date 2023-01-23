return {
  {
    "mrjones2014/legendary.nvim",
    keys = {
      { "<C-S-p>", "<cmd>Legendary<cr>", desc = "Legendary" },
      { "<leader>hc", "<cmd>Legendary<cr>", desc = "Command Palette" },
    },
    opts = {
      which_key = { auto_register = true },
    },
  },
  {
    "folke/which-key.nvim",
    dependencies = {
      "mrjones2014/legendary.nvim",
    },
    event = "VeryLazy",
    config = function()
      local wk = require "which-key"
      wk.setup {
        show_help = false,
        plugins = { spelling = true },
        key_labels = { ["<leader>"] = "SPC" },
        triggers = "auto",
      }
      wk.register({
        w = { "<cmd>update!<CR>", "Save" },
        q = { "<cmd>lua require('utils').smart_quit()<CR>", "Quit" },
        b = { name = "+Buffer" },
        d = { name = "+Debug" },
        f = { name = "+File" },
        g = { name = "+Git" },

        h = { name = "+Help" },
        p = { name = "+Project" },
        t = { name = "+Test", N = { name = "Neotest" } },
        v = { name = "+View" },
        ["sn"] = { name = "+Noice" },
        c = {
          name = "+Code",
          x = {
            name = "Swap Next",
            f = "Function",
            p = "Parameter",
            c = "Class",
          },
          X = {
            name = "Swap Previous",
            f = "Function",
            p = "Parameter",
            c = "Class",
          },
        },
        s = {
          name = "+Search",
          c = {
            function()
              require("utils.cht").cht()
            end,
            "Cheatsheets",
          },
          s = {
            function()
              require("utils.cht").stack_overflow()
            end,
            "Stack Overflow",
          },
        },
      }, { prefix = "<leader>" })
    end,
  },
}
