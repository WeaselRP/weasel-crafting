ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local ox_inventory = exports.ox_inventory

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

        local xItem = ox_inventory:GetItem(source, data.Item.Recipe[i][2], metaData) 
        if xItem.count < (data.Item.Recipe[i][3]*amount) then
            hasItems = false
            break
        end
        hasItems = true
    end
    if hasItems then 
        local ItemNames = ""
        for i = 1, #data.Item.Recipe, 1 do
            local metaData = nil
            if next(data.Item.Recipe[i][4]) then
                metaData = data.Item.Recipe[i][4]
            end
            if data.Item.Recipe[i][5] then 
                ox_inventory:RemoveItem(source, data.Item.Recipe[i][2], math.floor(data.Item.Recipe[i][3]*data.Amount), metaData)
                ItemNames = ItemNames..data.Item.Recipe[i][1].." "
            end
        end
        if data.Item.Name == "money" or data.Item.Name == "black_money" then
            TriggerEvent("weasel-analytics:logTransaction", data.Item.Name, math.floor(data.Item.Quantity*data.Amount), xPlayer.getName(), "Item Sale: "..ItemNames)
        end

        if ox_inventory:CanCarryItem(source, data.Item.Name, math.floor(data.Item.Quantity*data.Amount), data.Item.MetaData) then
            ox_inventory:AddItem(source, data.Item.Name, math.floor(data.Item.Quantity*data.Amount), data.Item.MetaData)
        else
            print(ox_inventory:Inventory(1).label..' is unable to carry 5 bread')
        end

        success(source, "You have crafted "..math.floor(data.Item.Quantity*data.Amount).."x "..data.Item.DisplayName)
    else
        error(source, "You are missing some required items")
    end

end)
