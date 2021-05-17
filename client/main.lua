
guiEnabled = false
ESX = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function EnableGui(enable, Crafting, Craftables)
    
    SetNuiFocus(enable, enable)
    guiEnabled = enable

    SendNUIMessage({
        type = "enableui",
        enable = enable,
        Level = Crafting
    })
	if enable then
		SendNUIMessage({
			type = "addItems",
			Items = Craftables
		})
	end
end

RegisterNetEvent("weasel-crafting:openMenu")
AddEventHandler("weasel-crafting:openMenu", function(Crafting)
    EnableGui(true, Crafting, Config.Items)
end)

RegisterNetEvent("weasel-crafting:customMenu")
AddEventHandler("weasel-crafting:customMenu", function(Items, Crafting)
    EnableGui(true, Crafting, Items)
end)

RegisterNUICallback('escape', function(data, cb)
    EnableGui(false, 0)

    cb('ok')
end)

RegisterNUICallback('craft', function(data, cb)
    EnableGui(false)
    if hasItems(data.Item, data.Amount) then
        exports['mythic_notify']:SendAlert('inform', 'Press E to cancel')
        TriggerEvent("mythic_progbar:client:progress", {
            name = "crafting_item",
            duration = data.Item.Time*data.Amount,
            label = "Crafting "..data.Item.DisplayName.." x "..data.Amount,
            useWhileDead = false,
            canCancel = true,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }
        }, function(status)
            if not status then
                TriggerServerEvent("weasel-crafting:craftItem", data)
            end
        end)
    else
        exports['mythic_notify']:SendAlert('error', 'You are missing some items')
    end

    cb('ok')
end)

is_table_equal = function(t1,t2,ignore_mt) -- Stole right from linden inventory haha
	local ty1 = type(t1)
	local ty2 = type(t2)
	if ty1 ~= ty2 then return false end
	-- non-table types can be directly compared
	if ty1 ~= 'table' and ty2 ~= 'table' then return t1 == t2 end
	-- as well as tables which have the metamethod __eq
	local mt = getmetatable(t1)
	if not ignore_mt and mt and mt.__eq then return t1 == t2 end
	for k1,v1 in pairs(t1) do
	   local v2 = t2[k1]
	   if v2 == nil or not is_table_equal(v1,v2) then return false end
	end
	for k2,v2 in pairs(t2) do
	   local v1 = t1[k2]
	   if v1 == nil or not is_table_equal(v1,v2) then return false end
	end
	return true
end

function hasItems(Item, amount)
    local count = {}
    local hasItems = true
    ESX.PlayerData.inventory = ESX.GetPlayerData().inventory
    for k, v in pairs(ESX.PlayerData.inventory) do
        if not v.metadata then v.metadata = {} end
        for i = 1, #Item.Recipe, 1 do
            if count[i] == nil then count[i] = 0 end
            if v.name == Item.Recipe[i][2] and is_table_equal(v.metadata, Item.Recipe[i][4]) then
                count[i] = count[i] + v.count
            end
        end
    end
    for i = 1, #Item.Recipe, 1 do
        if Item.Recipe[i][5] then
            if count[i] < Item.Recipe[i][3]*amount then
                hasItems = false
            end
        else
            if count[i] < Item.Recipe[i][3] then
                hasItems = false
            end
        end
    end
    return hasItems

end


Citizen.CreateThread(function()
    while true do
        if guiEnabled then
            DisableControlAction(0, 1, guiEnabled) -- LookLeftRight
            DisableControlAction(0, 2, guiEnabled) -- LookUpDown

            DisableControlAction(0, 142, guiEnabled) -- MeleeAttackAlternate

            DisableControlAction(0, 106, guiEnabled) -- VehicleMouseControlOverride
        end
        Citizen.Wait(0)
    end
end)