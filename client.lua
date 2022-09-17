function nearMarker()
    for k,v in pairs(Config.Markers) do
        local playerCoords = GetEntityCoords(PlayerPedId())
        local distance = #(playerCoords - v.position)
        if distance < v.radius then
            return true
        end
    end
end

function markerRendering()
    for k,v in pairs(Config.Markers) do
        local playerCoords = GetEntityCoords(PlayerPedId())
        local distance = #(playerCoords - v.position)
        if distance < v.markerRenderingRadius then
            return v
        end
    end
end

CreateThread(function ()
    while true do
        local sleep = 1000
        if markerRendering() then
            sleep = 5
            DrawMarker(markerRendering().markerType, markerRendering().position.x, markerRendering().position.y, markerRendering().position.z-1.0, 0, 0, 0, 0, 0, 0, markerRendering().markerSize, markerRendering().markerSize, markerRendering().markerSize, markerRendering().markerColor.r, markerRendering().markerColor.g, markerRendering().markerColor.b, 100, 0, 0, 0, 0, 0, 0)
            if nearMarker() then
                local markerData = markerRendering()
                ShowHelpNotification(markerData.markerText)
                if IsControlJustPressed(0, 38) then
                    markerData.trigger()
                end  
            end

        end
        Wait(sleep)
    end
end)

function ShowHelpNotification(msg)
    AddTextEntry("INTERACTIVEMARKER", msg)
    DisplayHelpTextThisFrame("INTERACTIVEMARKER", false)
end