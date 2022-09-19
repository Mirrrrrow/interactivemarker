Config = {}

Config.Markers = {
    {
        pos = 1,
        position = vector3(373.9579, 326.7603, 103.5664),
        markerRenderingRadius = 10,
        markerType = 1,
        markerColor = {
            r = 255,
            g = 255,
            b = 0
        },
        markerSize = 1.0,
        radius = 1.5, 
        markerText = "Press ~INPUT_PICKUP~ to open the shop menu",
        triggerType = "client", --Client or Server
        trigger = function()
            print('Opened Menu')
        end
    }
}


