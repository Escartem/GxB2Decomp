﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/soul_equip1_ex_buff.lua

local table = {}

table.keys = {
	base = 3,
	grow = 4,
	buff = 2,
	id = 1,
	weight = 5
}
table.rows = {
	["1"] = {
		1,
		"atk",
		2000,
		100,
		125
	},
	["2"] = {
		2,
		"atkP",
		0.1,
		0.005,
		125
	},
	["3"] = {
		3,
		"hp",
		80000,
		4000,
		125
	},
	["4"] = {
		4,
		"hpP",
		0.2,
		0.01,
		125
	},
	["5"] = {
		5,
		"hit",
		32,
		1.6,
		950
	},
	["6"] = {
		6,
		"miss",
		32,
		1.6,
		950
	},
	["7"] = {
		7,
		"crit",
		16,
		0.8,
		950
	},
	["8"] = {
		8,
		"unCrit",
		24,
		1.2,
		950
	},
	["9"] = {
		9,
		"sklP",
		24,
		1.2,
		950
	},
	["10"] = {
		10,
		"trueAtk",
		12,
		0.6,
		950
	},
	["11"] = {
		11,
		"healI",
		0.008,
		0.0004,
		950
	},
	["12"] = {
		12,
		"healB",
		0.008,
		0.0004,
		950
	},
	["13"] = {
		13,
		"unfree",
		12,
		0.6,
		950
	},
	["14"] = {
		14,
		"free",
		12,
		0.6,
		950
	}
}

return table
