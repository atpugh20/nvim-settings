return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- Native FZF sorter, makes Telescope much faster
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
      { "<Leader>f", "<cmd>Telescope find_files<cr>",  desc = "Find files" },
      { "<Leader>g", "<cmd>Telescope live_grep<cr>",   desc = "Live grep" },
      { "<Leader>b", "<cmd>Telescope buffers<cr>",     desc = "Buffers" },
      { "<Leader>h", "<cmd>Telescope help_tags<cr>",   desc = "Help tags" },
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          layout_strategy = "horizontal",
          sorting_strategy = "ascending",
          layout_config = {
            prompt_position = "top",
          },
        },
      })
      telescope.load_extension("fzf")
    end,
  },
}
