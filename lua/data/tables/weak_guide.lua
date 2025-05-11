﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/weak_guide.lua

local table = {}

table.keys = {
	window_name = 3,
	obj_uncertain = 7,
	obj = 5,
	offset_xiaogan = 9,
	condition_name = 4,
	offset = 8,
	next = 2,
	id = 1,
	obj_type = 6
}
table.rows = {
	["1"] = {
		1,
		2,
		"campaign_window",
		"CAN_LEV_UP",
		"getHangResBtn",
		"",
		"",
		"84|30",
		"0|-100"
	},
	["2"] = {
		2,
		3,
		"main_window",
		"CAN_LEV_UP",
		"MainwinBottomBtn_2",
		"",
		"",
		"80|50",
		"0|-100"
	},
	["3"] = {
		3,
		4,
		"slot_window",
		"",
		"partnersGroup|SlotPartnerCard",
		1,
		1,
		"100|100",
		""
	},
	["4"] = {
		4,
		-1,
		"partner_detail_window",
		"",
		"btnLevUp",
		"",
		"",
		"45|20",
		""
	}
}

return table
