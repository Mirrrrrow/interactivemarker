RegisterServerEvent('marker:trigger')
AddEventHandler('marker:trigger', function(pos)
    for k,v in pairs(Config.Markers) do
        if v.pos == pos then
            v.trigger()
        end
    end
end)
