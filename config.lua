Config = {
    Items = {
        {
            Name = "weed_pouch",
            DisplayName = "Weed Pouch 1oz",
            Quantity = 1,
            MetaData = {},
            Time = 1000,
            Level = 1,
            Recipe = {
                {'Weed', 'weed', 28, {}, true},
                {'Plastic Pouch', 'plastic_pouch', 1, {}, true} -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        {
            Name = "meth_pouch",
            DisplayName = "Meth Pouch 5g",
            Quantity = 1,
            MetaData = {},
            Time = 1000,
            Level = 1,
            Recipe = {
                {'Methamphetamine', 'methamphetamine', 5, {}, true},
                {'Plastic Pouch', 'plastic_pouch', 1, {}, true}
            }
        },
        {
            Name = "coke_pouch",
            DisplayName = "Coke Pouch 5g",
            Quantity = 1,
            MetaData = {},
            Time = 1000,
            Level = 1,
            Recipe = {
                {'Cocaine', 'coke', 5, {}, true},
                {'Plastic Pouch', 'plastic_pouch', 1, {}, true}
            }
        },
        {
            Name = "crack_pouch",
            DisplayName = "crack pouch 5g",
            Quantity = 1,
            MetaData = {},
            Time = 1000,
            Level = 1,
            Recipe = {
                {'Crack', 'crack', 5, {}, true},
                {'Plastic Pouch', 'plastic_pouch', 1, {}, true}
            }
        },
        {
            Name = "pseudoephedrine_powder",
            DisplayName = "Pseudoephedrine Powder",
            Quantity = 50,
            MetaData = {},
            Time = 1000,
            Level = 1,
            Recipe = {
                {'Benzaldehyde 1L', 'benzaldehyde_1L', 2, {}, true},
                {'Dextrose', 'dextrose', 3, {}, true}
            }
        },
        {
            Name = "pseudoephedrine_powder",
            DisplayName = "Pseudoephedrine Powder",
            Quantity = 10,
            MetaData = {},
            Time = 1000,
            Level = 1,
            Recipe = {
                {'Pseudoephedrine Pills 10mg', 'pseudoephedrine_pills_10mg', 1, {}, true}
            }
        },
        {
            Name = "joint",
            DisplayName = "joint",
            Quantity = 1,
            MetaData = {},
            Time = 1000,
            Level = 1,
            Recipe = {
                {'Weed', 'weed', 5, {}, true},
                {'Rolling Paper', 'rolling_paper', 1, {}, true}
            }
        },
        {
            Name = "crack",
            DisplayName = "crack",
            Quantity = 50,
            MetaData = {},
            Time = 1000,
            Level = 1,
            Recipe = {
                {'Coke', 'coke', 40, {}, true},
                {'Baking Soda', 'bakingsoda', 2, {}, true}
            }
        },
        {
            Name = "WEAPON_MACHINEPISTOL",
            DisplayName = "Machine Pistol",
            Quantity = 1,
            MetaData = {serial="Unregistered", durability=75},
            Time = 1000,
            Level = 2,
            Recipe = {
                {'Silver', 'silver_ingot', 1, {type='metal'}, true},
                {'Steel Ingots', 'steel_ingot', 30, {type='metal'}, true}
            }
        }
    }
}
