return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#0d0509",
                bg_dark = "#0d0509",
                bg_highlight = "#9d8695",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#f0eaed",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#9d8695",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#E85F6F",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#FF7A8A",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#D4A882",
                -- green: Comments, strings, success states, git additions
                green = "#F29B9A",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#E8C099",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#D9A56C",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#D1B399",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#E3C5AB",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
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
