﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/activity_ept_message.lua

local table = {}

table.keys = {
	explanation = 3,
	range = 4,
	string = 2,
	id = 1,
	channel = 5,
	connect_type = 6
}
table.rows = {
	["1"] = {
		1,
		-1,
		-1,
		1,
		2,
		"activity_ept_cell_type_text#name|activity_ept_cells#cell_xy|||translation#arctic_expedition_group"
	},
	["2"] = {
		2,
		-1,
		-1,
		1,
		2,
		"activity_ept_cell_type_text#name|activity_ept_cells#cell_xy"
	},
	["3"] = {
		3,
		-1,
		-1,
		1,
		2,
		"activity_ept_era_text#name"
	},
	["4"] = {
		4,
		-1,
		-1,
		2,
		2,
		"activity_ept_era_text#name|activity_ept_era_text#desc"
	},
	["5"] = {
		5,
		-1,
		-1,
		0,
		1,
		"|activity_ept_cell_type_text#name|activity_ept_cells#cell_xy"
	},
	["6"] = {
		6,
		-1,
		-1,
		1,
		0,
		"activity_ept_cells#id"
	},
	["7"] = {
		7,
		-1,
		-1,
		1,
		0,
		"activity_ept_cells#id"
	}
}

return table
