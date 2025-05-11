﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/guild_order.lua

local table = {}

table.keys = {
	awards = 5,
	picture = 7,
	time = 4,
	next_id = 2,
	id = 1,
	up_cost = 6,
	weight = 3
}
table.rows = {
	["1"] = {
		1,
		2,
		6000,
		36000,
		"1#150000|4#65",
		"2#10",
		"guild_food1"
	},
	["2"] = {
		2,
		3,
		3000,
		36000,
		"1#180000|4#70",
		"2#20",
		"guild_food2"
	},
	["3"] = {
		3,
		4,
		1000,
		39600,
		"1#220000|4#80",
		"2#30",
		"guild_food3"
	},
	["4"] = {
		4,
		5,
		0,
		39600,
		"1#260000|4#100",
		"2#60",
		"guild_food4"
	},
	["5"] = {
		5,
		6,
		0,
		43200,
		"1#300000|4#130",
		"2#100",
		"guild_food5"
	},
	["6"] = {
		6,
		0,
		0,
		43200,
		"1#350000|4#180",
		0,
		"guild_food6"
	}
}

return table
