local gameId = 115915240028498
local scriptUrl = "https://raw.githubusercontent.com/Pawelxx1212/Roblox-Mod-Menus/refs/heads/main/Games/I%20Heard%20It%20Too%20Remastered"

if game.PlaceId == gameId then
    local success, result = pcall(function()
        return loadstring(game:HttpGet(scriptUrl))()
    end)

    if not success then
        warn("Failed to load script:", result)
    end
end
