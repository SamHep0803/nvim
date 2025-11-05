return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      "ibhagwan/fzf-lua", -- optional
    },

    keys = {
      {
        "<leader>gg",
        function()
          require("neogit").open({ kind = "split" })
        end,
        desc = "Neogit",
      },
    },
  },
}
