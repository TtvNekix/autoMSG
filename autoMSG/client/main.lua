ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    if Config.EnableAutoMsg then
        StartThread()
    end
end)

function StartThread()
    Citizen.CreateThread(function()
        while true do
            local msec = Config.Messages.MsgTime * 60000
                TriggerServerEvent('server:autoMSG')
            Citizen.Wait(msec)
        end
    end)
end