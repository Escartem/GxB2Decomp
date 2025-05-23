﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/en_en/partner_challange_newbuff_text_en_en.lua

local table = {}

table.keys = {
	id = 1,
	name = 2,
	desc = 3
}
table.rows = {
	["1"] = {
		1,
		"Heavy Armor",
		"Increase the HP of all enemies by 30%"
	},
	["2"] = {
		2,
		"Adrenaline",
		"Increase the Attack of all enemies by 30%"
	},
	["3"] = {
		3,
		"Regroup",
		"The first 2 enemies who takes lethal damage will heal themselves by 100% of their Maximum HP"
	},
	["4"] = {
		4,
		"Armor Plate",
		"The enemy will only take 10% of their Maximum HP damage at most from each hit"
	},
	["5"] = {
		5,
		"Revenge",
		"When an enemy is defeated, all enemies remaining will heal themselves for (30% of self maximum HP), and increase their Attack, Precision, Block Rate, and Crit by 30% for 3 rounds."
	},
	["6"] = {
		6,
		"Invisibility",
		"Each enemy will gain Invisibility (they will be able to dodge attacks that target 1 enemy or target random enemy, lower the damage taken by 50% and gain 100% extra Crit) for 4 rounds when their HP is lower than 50% (can trigger only once)"
	}
}

return table
