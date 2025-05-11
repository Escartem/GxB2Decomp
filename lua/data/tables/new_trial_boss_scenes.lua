﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/new_trial_boss_scenes.lua

local table = {}

table.keys = {
	stage_scene = 4,
	partner_id = 3,
	battle_id = 2,
	battle_scene = 6,
	id = 1,
	stage_scene_detail = 5,
	battle_scene_boss = 7,
	boss_image = 8
}
table.rows = {
	["1"] = {
		1,
		300001,
		2000005,
		"bg_volcano_erupt",
		"trial_bg06",
		"battle_map_51_2",
		"battle_map_51_1",
		"boss_nueyan"
	},
	["2"] = {
		2,
		300002,
		2000030,
		"bg_trail_sences_sea",
		"trial_bg09",
		"bg_trail_sences_battle2",
		"bg_trail_sences_battle1",
		"boss_sealord"
	}
}

return table
