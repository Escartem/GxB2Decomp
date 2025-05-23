﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/en_en/chime_text_en_en.lua

local table = {}

table.keys = {
	name = 2,
	buff1 = 3,
	buff4 = 6,
	id = 1,
	buff3 = 5,
	buff2 = 4
}
table.rows = {
	["20001"] = {
		20001,
		"Chime of Cherries",
		"Base Attribute - HP +3%",
		"Base Attribute - HP +6%",
		"",
		"Increases Servant's Healing by 20%"
	},
	["30001"] = {
		30001,
		"Chime of Kittens",
		"Base Attribute - Attack +2%",
		"Base Attribute - Attack +4%",
		"",
		"Increases Servant's Damage by 20%"
	},
	["40001"] = {
		40001,
		"Chime of the Spectre",
		"Increases Base Attributes provided by the Chime by 50% for Ghost Girls.",
		"Armor Break +10%",
		"",
		"Armor Break +20%"
	},
	["40002"] = {
		40002,
		"Chime of Order",
		"Increases Base Attributes provided by the Chime by 50% for Human Girls.",
		"Block +10%",
		"",
		"Block +20%"
	},
	["40003"] = {
		40003,
		"Chime of Freedom",
		"Increases Base Attributes provided by the Chime by 50% for Monster Girls.",
		"Base Attribute - Attack +3%",
		"",
		"Base Attribute - Attack +6%"
	},
	["40004"] = {
		40004,
		"Chime of Faeries",
		"Increases Base Attributes provided by the Chime by 50% for Fairy Girls.",
		"Base Attribute - HP +4%",
		"",
		"Base Attribute - HP +8%"
	},
	["50001"] = {
		50001,
		"Chime of the Abyss",
		"Increases Base Attributes provided by the Chime by 50% for Demon Girls.",
		"Skill Damage +20%",
		"Skill Damage +40%",
		"Base Attribute - Attack +6%\nIncrease damage dealt by all ally girls by 1% for every Demon Girl in the Team"
	},
	["50002"] = {
		50002,
		"Chime of the Heavens",
		"Increases Base Attributes provided by the Chime by 50% for Angel Girls.",
		"Holy Damage +6%",
		"Holy Damage +12%",
		"Base Attribute - HP +8%\nIncrease Damage Depletion of all ally girls by 1% for every Angel Girl in the Team"
	},
	["50003"] = {
		50003,
		"Chime of the Galaxy",
		"Increases boost to Base Attributes provided by the Chime by 50% for Cosmos Girls.",
		"All Damage Dealt +3%",
		"All Damage Dealt +6%",
		"Base Attribute - Attack +8%\nIncrease the bonus attribute(s) provided by Cosmos aura by 3% for every Cosmos Girl in the Team"
	},
	["60001"] = {
		60001,
		"Chime of Reflections",
		"Damage Depletion +10%",
		"Base Attribute - HP +6%",
		"Base Attribute - HP +12%",
		"Base Attribute - HP +12%\nReduces all damage taken by 10% for all Girls on the Team."
	}
}

return table
