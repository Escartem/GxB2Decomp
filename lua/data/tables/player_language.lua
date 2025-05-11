﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/player_language.lua

local table = {}

table.keys = {
	language_code = 5,
	name = 3,
	display = 7,
	match_id = 4,
	id = 1,
	true_name = 2,
	time_stamp = 8,
	true_language_code = 6
}
table.rows = {
	["1"] = {
		1,
		"English",
		"英文",
		1,
		"en|en_en|en_us|en_au|en_ca|id_id|en_nz|en_gb|es_uy",
		"en_en",
		1,
		""
	},
	["2"] = {
		2,
		"Français",
		"法语",
		2,
		"fr|fr_be|fr_kt|fr_fr",
		"fr_fr",
		1,
		""
	},
	["4"] = {
		4,
		"繁體中文",
		"繁体中文",
		4,
		"zh|zh_hk|zh_tw|zh_sg",
		"zh_tw",
		1,
		""
	},
	["5"] = {
		5,
		"日本語",
		"日语",
		5,
		"ja|ja_jp",
		"ja_jp",
		1,
		""
	},
	["6"] = {
		6,
		"한국어",
		"한국어",
		6,
		"ko|ko_kr",
		"ko_kr",
		1,
		""
	},
	["11"] = {
		11,
		"Deutsch",
		"德语",
		11,
		"de|de_de|de_at",
		"de_de",
		1,
		""
	},
	["14"] = {
		14,
		"简体中文",
		"简体中文",
		14,
		"zh|zh_cn|zh_my",
		"zh_cn",
		0,
		""
	}
}

return table
