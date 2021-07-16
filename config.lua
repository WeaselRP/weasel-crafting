  
Config = {
    Items = {
        {
            Name = "corn_seed",
            DisplayName = "Corn Seed",
            Quantity = 12,
            MetaData = {},
            Time = 1000,
            Level = 1,
            Recipe = {
                {'Corn', 'corn', 1, {}, true},
            }
        },
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
            DisplayName = "crack Pouch 5g",
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
            Name = "dmt_pouch",
            DisplayName = "dmt Pouch 1g",
            Quantity = 1,
            MetaData = {},
            Time = 1000,
            Level = 1,
            Recipe = {
                {'DMT', 'dmt', 1, {}, true},
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
            DisplayName = "Joint",
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
            DisplayName = "Crack",
            Quantity = 50,
            MetaData = {},
            Time = 1000,
            Level = 1,
            Recipe = {
                {'Coke', 'coke', 40, {}, true},
                {'Baking Soda', 'bakingsoda', 2, {}, true}
            }
        },



        ------------------ GUNS GUNS GUNS GUNS GUNS GUNS GUNS GUNS GUNS GUNS GUNS GUNS GUNS GUNS GUNS GUNS -------------------------------


        {
            Name = "ar_barrel1",
            DisplayName = "high Quality Barrel",
            Quantity = 1,
            MetaData = {type = 'barrel'},
            Time = 12000,
            Level = 4,
            Recipe = {
                {'Steel', 'steel_ingot', 20, {}, true},
                {'Titanium Ingot', 'titanium_ingot', 10, {}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true},
                {'Tungsten Carbide Tooling', 'cutting_tool1', 1, {type = 'tool'}, false} -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        {
            Name = "ar_barrel2",
            DisplayName = "Normal Quality Barrel",
            Quantity = 1,
            MetaData = {type = 'barrel'},
            Time = 45000,
            Level = 3,
            Recipe = {
                {'Steel', 'steel_ingot', 10, {}, true},
                {'Titanium Ingot', 'titanium_ingot', 5, {}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true},
                {'Ceramic Tooling', 'cutting_tool2', 1, {type = 'tool'}, false}
                -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        {
            Name = "ar_barrel3",
            DisplayName = "Low Quality Barrel",
            Quantity = 1,
            MetaData = {type = 'barrel'},
            Time = 30000,
            Level = 2,
            Recipe = {
                {'Steel', 'steel_ingot', 10, {}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true},
                {'Steel Tooling', 'cutting_tool3', 1, {type = 'tool'}, false} -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        ------------------
        {
            Name = "ar_receiver1",
            DisplayName = "high quality AR",
            Quantity = 1,
            MetaData = {type = 'receiver'},
            Time = 120000,
            Level = 4,
            Recipe = {
                {'Steel', 'steel_ingot', 50, {}, true},
                {'Titanium Ingot', 'titanium_ingot', 30, {}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true},
                {'Tungsten Carbide Tooling', 'cutting_tool1', 1, {type = 'tool'}, false} -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        {
            Name = "ar_receiver2",
            DisplayName = "Normal quality AR",
            Quantity = 1,
            MetaData = {type = 'receiver'},
            Time = 45000,
            Level = 3,
            Recipe = {
                {'Steel', 'steel_ingot', 40, {}, true},
                {'Titanium Ingot', 'titanium_ingot', 20, {}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true},
                {'Ceramic Tooling', 'cutting_tool2', 1, {type = 'tool'}, false}
                -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        {
            Name = "ar_receiver3",
            DisplayName = "Low quality AR",
            Quantity = 1,
            MetaData = {type = 'receiver'},
            Time = 30000,
            Level = 2,
            Recipe = {
                {'Steel', 'steel_ingot', 30, {}, true},
                {'Titanium Ingot', 'titanium_ingot', 10, {}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true},
                {'Steel Tooling', 'cutting_tool3', 1, {type = 'tool'}, false} -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        
        {
            Name = "plate_titanium",
            DisplayName = "Titanium Plate",
            Quantity = 1,
            MetaData = {},
            Time = 3000,
            Level = 2,
            Recipe = {
               
                {'Titanium Ingot', 'titanium_ingot', 3, {}, true},
                {'Steel Tooling', 'cutting_tool3', 1, {}, false}
            }
        },
        {
            Name = "smg_receiver1",
            DisplayName = "High quality SMG",
            Quantity = 1,
            MetaData = {type = 'receiver'},
            Time = 30000,
            Level = 4,
            Recipe = {
                {'Steel', 'steel_ingot', 30, {}, true},
                {'Titanium Ingot', 'titanium_ingot', 15, {}, true},
                {'Milling Lubricant', 'cutting_oil', 2, {type = 'oil'}, true},
                {'Tungsten Carbide Tooling', 'cutting_tool1', 1, {type = 'tool'}, false} -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        {
            Name = "smg_receiver2",
            DisplayName = "Normal quality SMG",
            Quantity = 1,
            MetaData = {type = 'receiver'},
            Time = 30000,
            Level = 3,
            Recipe = {
                {'Steel', 'steel_ingot', 25, {}, true},
                {'Titanium Ingot', 'titanium_ingot', 10, {}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true},
                {'Ceramic Tooling', 'cutting_tool2', 1, {type = 'tool'}, false},
                 -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        {
            Name = "smg_receiver3",
            DisplayName = "Low quality SMG",
            Quantity = 1,
            MetaData = {type = 'receiver'},
            Time = 30000,
            Level = 2,
            Recipe = {
                {'Steel', 'steel_ingot', 20, {}, true},
                {'Titanium Ingot', 'titanium_ingot', 5, {}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true},
                {'Steel Tooling', 'cutting_tool3', 1, {type = 'tool'}, false} -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        ----------------------------------------------------------------milling inserts--------------------------------





        {
            Name = "cutting_tool1",
            DisplayName = "Tungsten Carbide Tooling",
            Quantity = 1,
            MetaData = {type = 'tool'},
            Time = 30000,
            Level = 3,
            Recipe = {
                {'Tungsten Ingot', 'tungsten_ingot', 5, {}, true},
                {'Titanium Ingot', 'titanium_ingot', 50, {}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true},
                {'Ceramic Tooling', 'cutting_tool2', 1, {type = 'tool'}, true},
                {'Tongs', 'tongs', 1, {}, false} -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        {
            Name = "cutting_tool2",
            DisplayName = "Ceramic Tooling",
            Quantity = 1,
            MetaData = {type = 'tool'},
            Time = 30000,
            Level = 3,
            Recipe = {
                {'Gold Ingots', 'gold_ingot', 5, {}, true},
                {'Titanium Ingot', 'titanium_ingot', 40, {}, true},
                {'Steel Tooling', 'cutting_tool3', 1, {type = 'tool'}, true},
                {'Tongs', 'tongs', 1, {}, false} -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
       
        {
            Name = "cutting_tool3",
            DisplayName = "Steel Tooling",
            Quantity = 1,
            MetaData = {type = 'tool'},
            Time = 30000,
            Level = 3,
            Recipe = {
                {'Silver', 'silver_ingot', 5, {}, true},
                {'Titanium Ingot', 'titanium_ingot', 30, {}, true},
                {'Steel', 'steel_ingot', 50, {}, true},
                {'Tongs', 'tongs', 1, {}, false} -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        {
            Name = "cutting_oil",
            DisplayName = "Milling Lubricant",
            Quantity = 1,
            MetaData = {type = 'oil'},
            Time = 5000,
            Level = 3,
            Recipe = {
                {'Barrel of Oil', 'oil_barrel', 1, {type='oil'}, true},
                {'hydrogen peroxide', 'hydrogen_peroxide450ml', 1, {}, true} -- Displayname, Item Name, Amount needed, metadata, consumed
            }
        },
        ----------------------------------------

        --Guns

        --------------------------------------
        {
            Name = "WEAPON_MACHINEPISTOL",
            DisplayName = "Tech 9",
            Quantity = 1,
            MetaData = {serial="Unregistered", durability=100},
            Time = 45000,
            Level = 4,
            Recipe = {
                {'Low quality SMG', 'smg_receiver3', 1, {type = 'receiver'}, true},
                {'Low Quality Barrel', 'ar_barrel3', 1, {type = 'barrel'}, true}
            }
        },
        {
            Name = "WEAPON_MICROSMG",
            DisplayName = "Mico UZI",
            Quantity = 1,
            MetaData = {serial="Unregistered", durability=100},
            Time = 45000,
            Level = 4,
            Recipe = {
                {'Normal quality SMG', 'smg_receiver2', 1, {type = 'receiver'}, true},
                {'Normal Quality Barrel', 'ar_barrel2', 1, {type = 'barrel'}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true}
            }
        },
        {
            Name = "WEAPON_MINISMG",
            DisplayName = "Super Draco",
            Quantity = 1,
            MetaData = {serial="Unregistered", durability=100},
            Time = 45000,
            Level = 4,
            Recipe = {
                {'High quality SMG', 'smg_receiver1', 1, {type = 'receiver'}, true},
                {'Normal Quality Barrel', 'ar_barrel2', 1, {type = 'barrel'}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true}
            }
        },
        {
            Name = "weapon_smg",
            DisplayName = "MP5",
            Quantity = 1,
            MetaData = {serial="Unregistered", durability=100},
            Time = 45000,
            Level = 4,
            Recipe = {
                {'High quality SMG', 'smg_receiver1', 1, {type = 'receiver'}, true},
                {'Normal Quality Barrel', 'ar_barrel2', 1, {type = 'barrel'}, true},
                {'Milling Lubricant', 'cutting_oil', 1, {type = 'oil'}, true}
            }
        },
        {
            Name = "WEAPON_GUSENBERG",
            DisplayName = "Tommy Gun",
            Quantity = 1,
            MetaData = {serial="Unregistered", durability=100},
            Time = 60000,
            Level = 4,
            Recipe = {
                {'High quality SMG', 'smg_receiver1', 1, {type = 'receiver'}, true},
                {'High Quality Barrel', 'ar_barrel1', 1, {type = 'barrel'}, true},
                {'Milling Lubricant', 'cutting_oil', 2, {type = 'oil'}, true}
            }
        },
        {
            Name = "WEAPON_ASSAULTRIFLE",
            DisplayName = "AK-47",
            Quantity = 4,
            MetaData = {serial="Unregistered", durability=100},
            Time = 120000,
            Level = 5,
            Recipe = {
                {'High Quality AR', 'ar_receiver1', 1, {type = 'receiver'}, true},
                {'High Quality Barrel', 'ar_barrel1', 1, {type = 'barrel'}, true},
                {'Milling Lubricant', 'cutting_oil', 3, {type = 'oil'}, true}
            }
        },

        --Misc
        {
            Name = "WEAPON_MOLOTOV",
            DisplayName = "Molotov",
            Quantity = 1,
            Time = 5000,
            Level = 2,
            Recipe = {
                {'Vodka', 'bottle-vodka', 1, {}, true},
                {'Bandage', 'bandage', 1, {}, true}
            }
        },
        {
            Name = "ammo-rifle",
            DisplayName = "5.56 Bullets",
            Quantity = 10,
            Time = 45000,
            Level = 5,
            Recipe = {
                {'Gunpowder', 'gunpowder', 1, true},
                {'Brass Ingot', 'brass_ingot', 1, true},
                {'Lead Ingot', 'lead_ingot', 1, true},
            }
        },
        {
            Name = "ammo-rifle2",
            DisplayName = "7.62 Bullets",
            Quantity = 10,
            Time = 45000,
            Level = 5,
            Recipe = {
                {'Gunpowder', 'gunpowder', 1, true},
                {'Brass Ingot', 'brass_ingot', 1, true},
                {'Lead Ingot', 'lead_ingot', 1, true},
            }
        },
        {
            Name = "ammo-45",
            DisplayName = ".45 ACP Bullets",
            Quantity = 10,
            Time = 45000,
            Level = 4,
            Recipe = {
                {'Gunpowder', 'gunpowder', 1, true},
                {'Brass Ingot', 'brass_ingot', 1, true},
                {'Lead Ingot', 'lead_ingot', 1, true},
            }
        },
        {
            Name = "ammo-9",
            DisplayName = "9mm Bullets",
            Quantity = 10,
            Time = 45000,
            Level = 4,
            Recipe = {
                {'Gunpowder', 'gunpowder', 1, true},
                {'Brass Ingot', 'brass_ingot', 1, true},
                {'Lead Ingot', 'lead_ingot', 1, true},
            }
        },
        
    }
}