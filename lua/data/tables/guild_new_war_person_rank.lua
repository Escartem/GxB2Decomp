﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/guild_new_war_person_rank.lua

local table = {}

table.keys = {
	id = 1,
	mail_id = 5,
	rank = 2,
	rank_front = 3,
	person_awards = 4
}
table.rows = {
	["1"] = {
		1,
		1,
		1,
		"4#200|1#2000000",
		256
	},
	["2"] = {
		2,
		2,
		2,
		"4#150|1#1500000",
		256
	},
	["3"] = {
		3,
		3,
		3,
		"4#100|1#1000000",
		256
	},
	["4"] = {
		4,
		10,
		"4-10",
		"4#80|1#800000",
		256
	},
	["5"] = {
		5,
		20,
		"11-20",
		"4#60|1#600000",
		256
	},
	["6"] = {
		6,
		99,
		"21+",
		"4#40|1#400000",
		256
	}
}

return table
