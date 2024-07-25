local ox_inventory = exports.ox_inventory

local function weighted_random(pool)
    local poolsize = 0
    for i = 1, #pool do
        v = pool[i]
        poolsize = poolsize + v['weight']
    end
    local selection = math.random(poolsize)
    for i = 1, #pool do
        v = pool[i]
        selection = selection - v['weight']
        if (selection <= 0) then
            --print(i)
            return i
        end
    end
end

exports('UseLootCrate', function(event, item, inventory, slot, data)
	if event == 'usingItem' then
        local src = inventory.player.source
        print(print(json.encode(item, {indent=true})))
        local usedItemConfig = Config.Rewards[item.name]
        local random = weighted_random(usedItemConfig)
        SetTimeout(9500, function()
            local rewardItemData = ox_inventory:Items(usedItemConfig[random]['item'])
            if ox_inventory:CanCarryWeight(src, rewardItemData.weight) then
                if ox_inventory:AddItem(src, rewardItemData.name, 1) then
                    ox_inventory:RemoveItem(src, item.name, 1)
                    TriggerClientEvent('ox_lib:notify', src, {
                        description = 'You Won a ' .. rewardItemData.label ..'!',
                        type = 'success'
                    })
                end
            else
                TriggerClientEvent('ox_lib:notify', src, {
                    description = 'No space in your inventory for the reward.',
                    type = 'error'
                })
            end
        end)
        TriggerClientEvent('js5m_lootcrate_ox:client:open', src, item.name, random)
    end
end)