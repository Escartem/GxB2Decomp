﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/tips_activity_point.lua

local table = {}

table.keys = {
	activity_id = 2,
	point = 4,
	id = 1,
	title = 3,
	content = 5,
	connect_type = 6
}
table.rows = {
	["1"] = {
		1,
		16,
		-1,
		"activity_tree#point",
		-1,
		"activity_tree#point"
	},
	["2"] = {
		2,
		20,
		-1,
		"activity_gamble#point",
		-1,
		"activity_gamble#point"
	},
	["3"] = {
		3,
		168,
		-1,
		"activity_gacha#point",
		-1,
		"activity_gacha#point"
	},
	["4"] = {
		4,
		188,
		-1,
		"activity_tree_group_award#point",
		-1,
		"group_text#name2|activity_tree_group_award#point"
	},
	["5"] = {
		5,
		21,
		-1,
		"activity_pub_mission#complete_value",
		-1,
		"activity_pub_mission#star"
	},
	["6"] = {
		6,
		22,
		-1,
		"activity_arena#point",
		-1,
		"activity_arena#point"
	},
	["7"] = {
		7,
		25,
		-1,
		"activity_compose#limit",
		-1,
		"activity_compose#star"
	},
	["8"] = {
		8,
		242,
		-1,
		-1,
		-1,
		-1
	}
}

return table
