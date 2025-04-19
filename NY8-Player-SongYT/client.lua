RegisterCommand("playyt", function(source, args)
    local url = args[1]
    if not url then
        print("❌ Lien YouTube manquant")
        return
    end

    local coords = GetEntityCoords(PlayerPedId())
    print("✅ Lecture du lien :", url)
    exports.xsound:PlayUrlPos("testyt", url, 0.5, coords)
    exports.xsound:Distance("testyt", 30.0)
end, false)

RegisterCommand("stopyt", function()
    exports.xsound:Destroy("testyt")
end, false)
