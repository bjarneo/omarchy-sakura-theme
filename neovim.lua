return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#0d0509",
        dark_bg    = "#060204",
        darker_bg  = "#000000",
        lighter_bg = "#230e18",

        fg         = "#f0eaed",
        dark_fg    = "#c6afba",
        light_fg   = "#f8f6f7",
        bright_fg  = "#ffffff",
        muted      = "#5c5559",

        red        = "#e85f6f",
        yellow     = "#d4a882",
        orange     = "#de8478",
        green      = "#f29b9a",
        cyan       = "#e8c099",
        blue       = "#d9a56c",
        purple     = "#d1b399",
        brown      = "#853641",

        bright_red    = "#ff7a8a",
        bright_yellow = "#e6ba94",
        bright_green  = "#ffb5b4",
        bright_cyan   = "#fbd2ab",
        bright_blue   = "#ebb97e",
        bright_purple = "#e3c5ab",

        accent               = "#d9a56c",
        cursor               = "#f0eaed",
        foreground           = "#f0eaed",
        background           = "#0d0509",
        selection            = "#230e18",
        selection_foreground = "#f0eaed",
        selection_background = "#230e18",
      },
    },
    -- set up hot reload
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
