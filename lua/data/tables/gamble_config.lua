﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/gamble_config.lua

local table = {}

table.keys = {
	cost = 5,
	need_vip = 7,
	award = 6,
	gamble_table = 3,
	refresh_cost = 9,
	need_level = 8,
	times = 4,
	system_refresh_time = 11,
	free_refresh_time = 10,
	id = 1,
	gamble_type = 2
}
table.rows = {
	["1"] = {
		1,
		1,
		"gamble",
		"1|10|10|20|50",
		"35#1|35#8|35#8|35#16|35#40",
		"6#10|6#100|6#100|6#200|6#500",
		"0|2|0|2|2",
		"0|0|80|80|80",
		"2#50",
		10800,
		86400
	},
	["2"] = {
		2,
		2,
		"gamble_up",
		"1|10",
		"29#1|29#10",
		"0#0|0#0",
		"3|3",
		"80|80",
		"2#100",
		10800,
		86400
	}
}

return table
