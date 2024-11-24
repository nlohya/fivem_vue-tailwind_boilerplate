local show_ui = false

RegisterCommand("bp:ui", function()
    show_ui = not show_ui
    SendNUIMessage({
        type = "ui",
        show = show_ui
    })
    SetNuiFocus(show_ui, show_ui)
end, false)

RegisterNUICallback("ui:hide", function()
    show_ui = false
    SendNUIMessage({
        type = "ui",
        show = show_ui
    })
    SetNuiFocus(show_ui, show_ui)
end)