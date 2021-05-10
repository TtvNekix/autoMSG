ESX, msg = nil, 1
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('server:autoMSG')
AddEventHandler('server:autoMSG', function()
    if msg == 1 then
        TriggerClientEvent('chat:addMessage', -1, { Config.Messages.MSG_1, color = {0, 153, 204}})
        msg = 2
    elseif msg == 2 then
        TriggerClientEvent('chat:addMessage', -1, { Config.Messages.MSG_2, color = {0, 153, 204}})
        msg = 3
    elseif msg == 3 then
        TriggerClientEvent('chat:addMessage', -1, { Config.Messages.MSG_3, color = {0, 153, 204}})
        msg = 1
    end
end)