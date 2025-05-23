﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/travel_train.lua

local table = {}

table.keys = {
	name = 2,
	lv_max = 3,
	base_effect = 6,
	grow_cost = 5,
	id = 1,
	grow_effect = 7,
	value_transform = 8,
	base_cost = 4
}
table.rows = {
	["1"] = {
		1,
		-1,
		30,
		"1#500000|205#10",
		"800000|50",
		1029085,
		0.01,
		0
	},
	["2"] = {
		2,
		-1,
		30,
		"1#500000|205#10",
		"800000|50",
		1028272,
		0.005,
		0
	},
	["3"] = {
		3,
		-1,
		30,
		"1#500000|205#10",
		"800000|50",
		1008124,
		10,
		2
	},
	["4"] = {
		4,
		-1,
		30,
		"1#500000|205#10",
		"800000|50",
		1004051,
		2,
		1
	},
	["5"] = {
		5,
		-1,
		30,
		"1#500000|205#10",
		"800000|50",
		1268002,
		10,
		2
	}
}

return table
