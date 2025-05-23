﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/pub_mission.lua

local table = {}

table.keys = {
	partner_star = 10,
	weight = 11,
	weight_auto = 12,
	random_names = 13,
	partner_num = 5,
	award_dropbox_id = 6,
	mission_time = 3,
	speedup_cost = 4,
	conditions = 8,
	id = 1,
	need_power = 9,
	star = 2,
	need_num = 7
}
table.rows = {
	["1"] = {
		1,
		1,
		3600,
		"0#0",
		1,
		500001,
		1,
		"1|2|3|4|5|6|7|8|9",
		500,
		0,
		2565,
		2560,
		"1|2|3|4|5|6|7|8|9|10|11|12|13|14|15"
	},
	["2"] = {
		2,
		2,
		7200,
		"0#0",
		2,
		500002,
		1,
		"1|2|3|4|5|6|7|8|9",
		1000,
		0,
		2705,
		2700,
		"1|2|3|4|5|6|7|8|9|10|11|12|13|14|15"
	},
	["3"] = {
		3,
		3,
		14400,
		"2#10",
		2,
		500003,
		1,
		"1|2|3|4|5|6|7|8|9",
		1800,
		3,
		2325,
		2320,
		"1|2|3|4|5|6|7|8|9|10|11|12|13|14|15"
	},
	["4"] = {
		4,
		4,
		21600,
		"2#20",
		3,
		500004,
		2,
		"1|2|3|4|5|6|7|8|9|10|11",
		4500,
		4,
		1503,
		1500,
		"16|17|18|19|20|21|22|23|24|25|26|27|28|29|30"
	},
	["5"] = {
		5,
		5,
		28800,
		"2#30",
		3,
		500005,
		2,
		"1|2|3|4|5|6|7|8|9|10|11",
		7500,
		5,
		802,
		800,
		"16|17|18|19|20|21|22|23|24|25|26|27|28|29|30"
	},
	["6"] = {
		6,
		6,
		43200,
		"2#45",
		4,
		500006,
		3,
		"1|2|3|4|5|6|7|8|9|10|11",
		16000,
		5,
		100,
		100,
		"31|32|33|34|35|36|37|38|39|40|41|42|43|44|45"
	},
	["7"] = {
		7,
		7,
		57600,
		"2#60",
		4,
		500007,
		3,
		"1|2|3|4|5|6|7|8|9|10|11",
		24000,
		6,
		0,
		20,
		"31|32|33|34|35|36|37|38|39|40|41|42|43|44|45"
	}
}

return table
