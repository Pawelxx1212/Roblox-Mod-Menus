if game.PlaceId == 115915240028498 then
    loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/Pawelxx1212/Roblox-Mod-Menus/refs/heads/main/Games/I%20Heard%20It%20Too%20Remastered"
    ))()

elseif game.PlaceId == 126323186948264 then
    local url = "https://raw.githubusercontent.com/Pawelxx1212/Roblox-Mod-Menus/refs/heads/main/Games/Paradox"

    local success, code = pcall(function()
        return game:HttpGet(url)
    end)

    if not success then
        warn("Paradox download failed:", code)
        return
    end

    print("Paradox downloaded successfully")
    print("Code length:", #code)

    local func, err = loadstring(code)

    if not func then
        warn("Paradox loadstring failed:", err)
        return
    end

    print("Paradox loaded successfully")
    func()
end
