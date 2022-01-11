# weasel-crafting
Weasel Crafting System

There is a simple crafting level system.

By default the /craft command will open the default menu at a crafting level of 1.

To open the menu at other levels trigger the client event "weasel-crafting:openMenu" and pass a Crafting Level.
e.g.
```
TriggerEvent("weasel-crafting:openMenu", 4)
```

To create a custom menu trigger the client event "weasel-crafting:customMenu" and pass a Items array like the one found in the config and a crafting level.

For qtarget tables:
```
local crafttables = {
    170995043
}

exports.qtarget:AddTargetModel(crafttables, {
    options = {
        {
            event = "weasel-crafting:mechcraft",            
            icon = "fas fa-tools",
            label = "Crafting Table"
        },
    },
    distance = 2
})
RegisterNetEvent("weasel-crafting:mechcraft")
AddEventHandler("weasel-crafting:mechcraft", function()
  TriggerEvent('weasel-crafting:openMenu', 1)
end)
```
