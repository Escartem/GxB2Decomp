﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/daily_mission.lua

local table = {}

table.keys = {
	award = 4,
	coefficient = 5,
	mission_des = 2,
	complete_value = 3,
	lv_limit = 6,
	go_window = 7,
	rank = 9,
	id = 1,
	go_params = 8
}
table.rows = {
	["1"] = {
		1,
		-1,
		2,
		"35#1",
		0,
		0,
		"midas_window",
		"",
		1
	},
	["2"] = {
		2,
		-1,
		2,
		"2#20",
		0,
		14,
		"gamble_window",
		"type:1",
		3
	},
	["3"] = {
		3,
		-1,
		2,
		"1#8000",
		500,
		28,
		"tavern_window",
		"",
		4
	},
	["4"] = {
		4,
		-1,
		3,
		"1#8000",
		500,
		0,
		"smithy_window",
		"",
		5
	},
	["5"] = {
		5,
		-1,
		1,
		"9#2000",
		300,
		0,
		"summon_window",
		"",
		6
	},
	["6"] = {
		6,
		-1,
		1,
		"9#2000",
		300,
		0,
		"summon_window",
		"",
		7
	},
	["7"] = {
		7,
		-1,
		3,
		"34#2",
		0,
		18,
		"arena_window",
		"",
		8
	},
	["8"] = {
		8,
		-1,
		5,
		"2#20",
		0,
		0,
		"campaign_window",
		"",
		9
	},
	["9"] = {
		9,
		-1,
		2,
		"2#20",
		0,
		20,
		"daily_quiz_window",
		"",
		10
	},
	["10"] = {
		10,
		-1,
		5,
		"35#1",
		0,
		0,
		"friend_window",
		"",
		2
	},
	["11"] = {
		11,
		-1,
		10,
		"2#100",
		0,
		-1,
		"",
		"",
		-1
	}
}

return table
