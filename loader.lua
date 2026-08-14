local placeId = game.PlaceId

if placeId == 115915240028498 then

    print("Detected: I Heard It Too")

    local source = game:HttpGet(
        "https://raw.githubusercontent.com/Pawelxx1212/Roblox-Mod-Menus/refs/heads/main/Games/I%20Heard%20It%20Too%20Remastered"
    )

    local scriptFunction = loadstring(source)

    if not scriptFunction then
        warn("Failed to compile I Heard It Too script")
        return
    end

    scriptFunction()

elseif placeId == 126323186948264 then

    print("Detected: Paradox")

    local source = game:HttpGet(
        "https://raw.githubusercontent.com/Pawelxx1212/Roblox-Mod-Menus/refs/heads/main/Games/Paradox"
    )

    local scriptFunction = loadstring(source)

    if not scriptFunction then
        warn("Failed to compile Paradox script")
        return
    end

    scriptFunction()

else
    warn("This game is not supported.")
    warn("PlaceId:", placeId)
end
