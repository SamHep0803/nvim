return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      sources = {
        explorer = {
          layout = {
            layout = {
              position = "right",
            },
          },
        },
      },
    },

    styles = {
      zen = {
        backdrop = {
          transparent = false,
        },
      },
    },
  },
}
