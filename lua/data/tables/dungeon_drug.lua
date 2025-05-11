﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/dungeon_drug.lua

local table = {}

table.keys = {
	effect = 6,
	name = 2,
	type = 5,
	relate_id = 9,
	desc = 3,
	num_max = 8,
	id = 1,
	icon = 4,
	weight = 7
}
table.rows = {
	["1"] = {
		1,
		-1,
		-1,
		4001,
		0,
		"healP#0.2",
		300,
		99999,
		2001
	},
	["2"] = {
		2,
		-1,
		-1,
		4101,
		0,
		"energy#300|healP#0.5",
		50,
		99999,
		2002
	},
	["3"] = {
		3,
		-1,
		-1,
		4201,
		0,
		"healP#1",
		50,
		99999,
		2003
	},
	["4"] = {
		4,
		-1,
		-1,
		3801,
		1,
		1028081,
		200,
		20,
		2004
	},
	["5"] = {
		5,
		-1,
		-1,
		3701,
		1,
		1009029,
		200,
		20,
		2005
	},
	["6"] = {
		6,
		-1,
		-1,
		3901,
		1,
		1008060,
		200,
		20,
		2006
	}
}

return table
