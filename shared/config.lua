Config = {}
Config.Rewards = {
    ['case_recoil'] = { --Case item name in your inventory
        {
            item = 'weapon_p226', --Item name in your inventory. Can be any item.
            image = 'img/weapon_p226.png', --Image location of item. This can also be changed to a remote image, ex 'https://i.imgur.com/aCTLp4L.png'
            weight = 70 --Weighted chance of item dropping. Higher the number, higher the chance. 70/100 == high chance, common. 5/100 == low chance, rare. Duh.
        },
        {
            item = 'weapon_doublebarrelfm',
            image = 'https://cfx-nui-ox_inventory/html/images/weapon_doublebarrelfm.png', --This is an example of using the inventory item image directly from the inventory resources. Thanks TrueSunnyD for the tip.
            weight = 25
        },
        {
            item = 'weapon_ar15',
            image = 'img/weapon_ar15.png',
            weight = 5
        },
    },
    ['case_prisma2'] = {
        {
            item = 'lockpick',
            image = 'https://cfx-nui-ox_inventory/web/images/lockpick.webp',
            weight = 70
        },
        {
            item = 'weapon_mp5',
            image = 'img/weapon_mp5.png',
            weight = 25
        },
        {
            item = 'weapon_scar17fm',
            image = 'img/weapon_scar17fm.png',
            weight = 5
        },
    },
}
