-- look_simpleblue.lua drawing engine configuration file for Notion.

if not gr.select_engine("de") then return end

de.reset()
MONOKINSPIRED_BACKGROUND_BLANK="#121010"
MONOKINSPIRED_BACKGROUND="#1c1415"
MONOKINSPIRED_FOREGROUND="#fff1f3"
MONOKINSPIRED_ACTIVE_SELECTED_BG="#302a2a"
MONOKINSPIRED_ACTIVE_SELECTED_FG="#fff2f5"
MONOKINSPIRED_ACTIVE_UNSELECTED_BG="#1c1415"
MONOKINSPIRED_ACTIVE_UNSELECTED_FG="#fff2f5"
MONOKINSPIRED_INACTIVE_SELECTED_BG="#201819"
MONOKINSPIRED_INACTIVE_SELECTED_FG="#fff2f5"
MONOKINSPIRED_INACTIVE_UNSELECTED_BG="#1c1415"
MONOKINSPIRED_INACTIVE_UNSELECTED_FG="#fff2f5"



--LOOK_
de.defstyle("*", {
    shadow_colour = "black",
    highlight_colour = "black",
    background_colour = MONOKINSPIRED_BACKGROUND,
    foreground_colour = MONOKINSPIRED_FOREGROUND,
    padding_pixels = 0,
    highlight_pixels = 0,
    shadow_pixels = 0,
    border_style = "elevated",
    font = "-*-helvetica-*-*-*-*-14-*-*-*-*-*-*-*",
    text_align = "center",
})

de.defstyle("frame", {
    shadow_colour = "black",
    highlight_colour = "black",
    padding_colour = "black",
    background_colour = MONOKINSPIRED_BACKGROUND,
    foreground_colour = MONOKINSPIRED_FOREGROUND,
    padding_pixels = 0,
    highlight_pixels = 0,
    shadow_pixels = 0,
    de.substyle("active", {
        shadow_colour = "black",
        highlight_colour = "black",
        background_colour = MONOKINSPIRED_BACKGROUND,
        foreground_colour = MONOKINSPIRED_FOREGROUND,
    }),
})

de.defstyle("tab", {
    font = "-*-helvetica-*-*-*-*-12-*-*-*-*-*-*-*",
    de.substyle("active-selected", {
        shadow_colour = "black",
        highlight_colour = "black",
        background_colour = MONOKINSPIRED_ACTIVE_SELECTED_BG,
        foreground_colour = MONOKINSPIRED_ACTIVE_SELECTED_FG,
    }),
    de.substyle("active-unselected", {
        shadow_colour = "black",
        highlight_colour = "black",
        background_colour = MONOKINSPIRED_ACTIVE_UNSELECTED_BG,
        foreground_colour = MONOKINSPIRED_ACTIVE_UNSELECTED_FG,
    }),
    de.substyle("inactive-selected", {
        shadow_colour = "black",
        highlight_colour = "black",
        background_colour = MONOKINSPIRED_INACTIVE_SELECTED_BG,
        foreground_colour = MONOKINSPIRED_INACTIVE_SELECTED_FG,
    }),
    de.substyle("inactive-unselected", {
        shadow_colour = "black",
        highlight_colour = "black",
        background_colour = MONOKINSPIRED_INACTIVE_UNSELECTED_BG,
        foreground_colour = MONOKINSPIRED_INACTIVE_UNSELECTED_FG,
    }),
    text_align = "center",
})

de.defstyle("input", {
    shadow_colour = "black",
    highlight_colour = "black",
    background_colour = "#3f3f3f",
    foreground_colour = "white",
    padding_pixels = 0,
    highlight_pixels = 0,
    shadow_pixels = 0,
    border_style = "elevated",
    de.substyle("*-cursor", {
        background_colour = "white",
        foreground_colour = "#3f3f3f",
    }),
    de.substyle("*-selection", {
        background_colour = "black",
        foreground_colour = "white",
    }),
})

de.defstyle("input-menu", {
    padding_pixels=0,
})

dopath("lookcommon_clean")

gr.refresh()

