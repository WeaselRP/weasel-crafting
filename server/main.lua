ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function error(source, msg)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = msg, length = 4500 })
end

function success(source, msg)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = msg, length = 4500 })
end

RegisterCommand("craft", function(source, args, rawCommand)
    
    if (source > 0) then
        TriggerClientEvent("weasel-crafting:openMenu", source, 1)
    
    else
        print("This command was executed by the server console, RCON client, or a resource.")
    end
end, false)

RegisterNetEvent("weasel-crafting:craftItem")
AddEventHandler("weasel-crafting:craftItem", function(data) 
    local xPlayer = ESX.GetPlayerFromId(source)
    local hasItems = false


    for i = 1, #data.Item.Recipe, 1 do
        local amount = data.Amount
        if not data.Item.Recipe[i][5] then
            amount = 1
        end
        local metaData = nil
        if next(data.Item.Recipe[i][4]) then
            metaData = data.Item.Recipe[i][4]
        end

        local xItem = xPlayer.getInventoryItem(data.Item.Recipe[i][2], metaData)
        if xItem.count < (data.Item.Recipe[i][3]*amount) then
            hasItems = false
            break
        end
        hasItems = true
    end
    if hasItems then 
        for i = 1, #data.Item.Recipe, 1 do
            local metaData = nil
            if next(data.Item.Recipe[i][4]) then
                metaData = data.Item.Recipe[i][4]
            end
            if data.Item.Recipe[i][5] then 
                xPlayer.removeInventoryItem(data.Item.Recipe[i][2], math.floor(data.Item.Recipe[i][3]*data.Amount), metaData)
            end
        end
        xPlayer.addInventoryItem(data.Item.Name, math.floor(data.Item.Quantity*data.Amount), data.Item.MetaData)
        success(source, "You have crafted "..math.floor(data.Item.Quantity*data.Amount).."x "..data.Item.DisplayName)
    else
        error(source, "You are missing some required items")
    end

end)