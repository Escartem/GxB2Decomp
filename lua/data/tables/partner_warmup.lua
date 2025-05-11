﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/partner_warmup.lua

local table = {}

table.keys = {
	reward = 8,
	stands = 6,
	battle_id = 7,
	next_id = 2,
	fort_first = 3,
	initial_partner = 5,
	plot_id = 9,
	unlock_day = 10,
	partner_id = 4,
	id = 1
}
table.rows = {
	["1"] = {
		1,
		2,
		1,
		-1,
		"",
		"",
		"",
		"2#200|9#1000000",
		"#4831#",
		1
	},
	["2"] = {
		2,
		3,
		0,
		-1,
		"",
		"",
		"",
		"1#2000000|10#1000",
		"#4880#",
		2
	},
	["3"] = {
		3,
		-1,
		0,
		-1,
		"",
		"",
		"",
		"358#5|29#1",
		"#4937#",
		3
	}
}

return table
