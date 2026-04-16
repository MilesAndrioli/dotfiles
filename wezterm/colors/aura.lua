return {
    foreground = "#edecee",
    background = "#21202e",

    cursor_bg = "#a277ff",
    cursor_fg = "#21202e",
    cursor_border = "#a277ff",

    -- Kept the alpha (7f) so syntax highlighting shows through selections
    selection_bg = "#3d375e",
    selection_fg = "#edecee",

    scrollbar_thumb = "#a394f0",
    split = "#141414",

    compose_cursor = "#ffca85",

    ansi = {
        "#21202e", -- black
        "#ff6767", -- red
        "#61ffca", -- green
        "#ffca85", -- yellow
        "#a277ff", -- blue
        "#f694ff", -- magenta
        "#82e2ff", -- cyan
        "#cdccce", -- white
    },

    brights = {
        "#444444", -- bright black
        "#ff6767", -- bright red (corrected)
        "#61ffca", -- bright green
        "#ffca85", -- bright yellow
        "#a277ff", -- bright blue
        "#f694ff", -- bright magenta
        "#82e2ff", -- bright cyan
        "#edecee", -- bright white
    },

    tab_bar = {
        background = "#1c1b22",

        active_tab = {
            bg_color = "#21202e",
            fg_color = "#edecee",
            intensity = "Normal",
        },

        inactive_tab = {
            bg_color = "#1c1b22",
            fg_color = "#6d6d6d",
        },

        inactive_tab_hover = {
            bg_color = "#2e2b38",
            fg_color = "#edecee",
        },

        new_tab = {
            bg_color = "#1c1b22",
            fg_color = "#6d6d6d",
        },

        new_tab_hover = {
            bg_color = "#2e2b38",
            fg_color = "#61ffca",
        },
    },
}
