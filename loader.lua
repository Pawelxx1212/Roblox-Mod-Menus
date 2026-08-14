local placeId = tostring(game.PlaceId)

print("Detected PlaceId:", placeId)

if placeId == "115915240028498" then
    print("Detected I Heard It Too")

    local success, err = pcall(function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/Pawelxx1212/Roblox-Mod-Menus/refs/heads/main/Games/I%20Heard%20It%20Too%20Remastered"
        ))()
    end)

    if not success then
        warn("I Heard It Too error:", err)
    end

elseif placeId == "126323186948264" then
    print("Detected Paradox")

    local success, err = pcall(function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/Pawelxx1212/Roblox-Mod-Menus/refs/heads/main/Games/Paradox"
        ))()
    end)

    if not success then
        warn("Paradox error:", err)
    end

else
    warn("This game is not supported!")
    warn("PlaceId detected:", placeId)
end
