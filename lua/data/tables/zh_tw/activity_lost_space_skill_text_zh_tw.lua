﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/zh_tw/activity_lost_space_skill_text_zh_tw.lua

local table = {}

table.keys = {
	desc = 5,
	name = 2,
	id = 1,
	icon = 4,
	energy = 3
}
table.rows = {
	["1"] = {
		1,
		"掃射雷射",
		32,
		"activity_lost_space_icon_skill2",
		"引導雷射，探測上一次探明的探測點所在横排的所有探測點"
	},
	["2"] = {
		2,
		"十字雷射",
		42,
		"activity_lost_space_icon_skill1",
		"引導雷射，探測上一次探明的探測點上下左右各兩個探測點"
	},
	["3"] = {
		3,
		"蓄能雷射",
		52,
		"activity_lost_space_icon_skill3",
		"引導雷射，探測上一次探明的探測點上下各三個探測點。每釋放一次技能后，技能所需的雷射能量減少6點，最多減少3次。（已減少{1}次）"
	},
	["4"] = {
		4,
		"環形雷射",
		43,
		"activity_lost_space_icon_skill4",
		"引導雷射，探測上一次探明的探測點相鄰的所有探測點"
	},
	["5"] = {
		5,
		"神秘雷射",
		35,
		"activity_lost_space_icon_skill5",
		"引導雷射，探測隨機5個探測點（優先探測隱藏的探測點）"
	},
	["6"] = {
		6,
		"蓄力雷射",
		34,
		"activity_lost_space_icon_skill6",
		"引導雷射，探測上一次探明的探測點上下各一個探測點。每釋放一次技能後，增加一個可探測的探測點，從上側開始增加，最多增加4次。（已增加{1}次）"
	}
}

return table
