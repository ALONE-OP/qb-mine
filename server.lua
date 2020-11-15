QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

RegisterServerEvent('qb-mine:getItem')
AddEventHandler('qb-mine:getItem', function()
    local xPlayer, randomItem = QBCore.Functions.GetPlayer(source), Config.Items[math.random(1, #Config.Items)]
    if math.random(0, 100) <= Config.ChanceToGetItem then
        xPlayer.Functions.AddItem(randomItem, 1)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[randomItem], "add")
        TriggerClientEvent("QBCore:Notify", source, "You mined some ".. randomItem .." ", "success", 10000)
    end
end)

RegisterServerEvent('qb-mine:sell')
AddEventHandler('qb-mine:sell', function()
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local Player = QBCore.Functions.GetPlayer(src)

    if xPlayer.Functions.RemoveItem("steel", 1) then
        TriggerClientEvent("QBCore:Notify", src, "You sold 1 steel", "success", 1000)
        Player.Functions.AddMoney("cash", Config.pricexd.steel)
        Citizen.Wait(200)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items['steel'], "remove")
    else
        TriggerClientEvent("QBCore:Notify", src, "You dont have mined items to sell", "error", 1000)
    end
        Citizen.Wait(1000)
    if xPlayer.Functions.RemoveItem("iron", 1) then
        TriggerClientEvent("QBCore:Notify", src, "You sold 1 iron", "success", 1000)
        Player.Functions.AddMoney("cash", Config.pricexd.iron)
        Citizen.Wait(200)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items['iron'], "remove")
    else
        TriggerClientEvent("QBCore:Notify", src, "You dont have mined items to sell", "error", 1000)
    end
        Citizen.Wait(1000)
    if xPlayer.Functions.RemoveItem("copper", 1) then
        TriggerClientEvent("QBCore:Notify", src, "You sold 1 copper", "success", 1000)
        Player.Functions.AddMoney("cash", Config.pricexd.copper)
        Citizen.Wait(200)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items['copper'], "remove")
    else
        TriggerClientEvent("QBCore:Notify", src, "You dont have mined items to sell", "error", 1000)
    end
        Citizen.Wait(1000)
    if xPlayer.Functions.RemoveItem("diamond", 1) then
        TriggerClientEvent("QBCore:Notify", src, "You sold 1 diamond", "success", 1000)
        Player.Functions.AddMoney("cash", Config.pricexd.diamond)
        Citizen.Wait(200)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items['diamond'], "remove")
    else
        TriggerClientEvent("QBCore:Notify", src, "You dont have mined items to sell", "error", 1000)
    end
        Citizen.Wait(1000)
    if xPlayer.Functions.RemoveItem("emerald", 1) then
        TriggerClientEvent("QBCore:Notify", src, "You sold 1 emerald", "success", 1000)
        Player.Functions.AddMoney("cash", Config.pricexd.emerald)
        Citizen.Wait(200)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items['emerald'], "remove")
    else
        TriggerClientEvent("QBCore:Notify", src, "You dont have mined items to sell", "error", 1000)
    end
end)
