local gameId = 115915240028498
local scriptUrl = "https://raw.githubusercontent.com/USERNAME/REPOSITORY/main/script.lua"

if game.PlaceId == gameId then
    local success, result = pcall(function()
        return loadstring(game:HttpGet(scriptUrl))()
    end)

    if not success then
        warn("Failed to load script:", result)
    end
end
