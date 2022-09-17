Config = {}

Config.Markers = {
    {
        position = vector3(373.9579, 326.7603, 103.5664),
        radius = 2.5,
        markerRenderingRadius = 10,
        markerType = 1,
        markerColor = {
            r = 255,
            g = 255,
            b = 0
        },
        markerSize = 0.5,
        markerText = "Press [E] to open the shop menu",
        trigger = function()
            print('Opened Menu')
            TriggerEvent('openShopMenu')
        end
    }
}


