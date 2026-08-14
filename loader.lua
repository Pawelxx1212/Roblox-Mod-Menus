local games = {
    [115915240028498] = "https://raw.githubusercontent.com/Pawelxx1212/Roblox-Mod-Menus/refs/heads/main/Games/I%20Heard%20It%20Too%20Remastered",
    [126323186948264] = "https://raw.githubusercontent.com/Pawelxx1212/Roblox-Mod-Menus/refs/heads/main/Games/Paradox.lua"
}

local url = games[game.PlaceId]

if url then
    local success, code = pcall(function()
        return game:HttpGet(url)
    end)

    if not success then
        warn("HTTP error:", code)
        return
    end

    local func, err = loadstring(code)

    if not func then
        warn("Loadstring error:", err)
        return
    end

    func()
else
    warn("This game is not supported. PlaceId:", game.PlaceId)
end
