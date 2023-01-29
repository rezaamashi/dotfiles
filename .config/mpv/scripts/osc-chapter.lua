-- Taken from https://github.com/mpv-player/mpv/issues/7545
local is_enabled = false

mp.add_key_binding("ctrl+c", "osc-cycle-chapter", function()
    is_enabled = not is_enabled
    mp.command("script-message osc-chapterlist " .. (is_enabled and 31557600 or 0))
end)
