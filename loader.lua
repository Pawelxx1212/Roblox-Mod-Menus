local games = {
    [115915240028498] = "https://raw.githubusercontent.com/Pawelxx1212/Roblox-Mod-Menus/refs/heads/main/Games/I%20Heard%20It%20Too%20Remastered.lua",
    [126323186948264] = "https://raw.githubusercontent.com/Pawelxx1212/Roblox-Mod-Menus/refs/heads/main/Games/Paradox.lua"
}

local url = games[game.PlaceId]

if url then
    local success, result = pcall(function()
        return game:HttpGet(url)
    end)

    if success then
        local func, err = loadstring(result)

        if func then
            func()
        else
            warn("Failed to compile script: " .. tostring(err))
        end
    else
        warn("Failed to download script: " .. tostring(result))
    end
else
    warn("This game is not supported. PlaceId: " .. tostring(game.PlaceId))
end
