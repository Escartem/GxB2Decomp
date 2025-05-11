﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/guild_boss_rank.lua

local table = {}

table.keys = {
	id = 1,
	name = 3,
	rank = 2,
	show = 4
}
table.rows = {
	["1"] = {
		1,
		1,
		"final_1",
		1
	},
	["2"] = {
		2,
		2,
		"final_2",
		2
	},
	["3"] = {
		3,
		3,
		"final_3",
		3
	},
	["4"] = {
		4,
		10,
		"final_10",
		"4-10"
	},
	["5"] = {
		5,
		15,
		"final_15",
		"11-15"
	},
	["6"] = {
		6,
		20,
		"final_20",
		"16-20"
	},
	["7"] = {
		7,
		999999,
		"final_30",
		"21-30"
	}
}

return table
