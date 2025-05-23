﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/zh_tw/activity_lost_space_event_text_zh_tw.lua

local table = {}

table.keys = {
	id = 1,
	name = 2,
	picture = 3,
	desc = 4
}
table.rows = {
	["1"] = {
		1,
		"跳躍點",
		"activity_lost_space_icon_xyg_90",
		"可以跳躍到全新的區域開啟新的探索。點擊後會離開當前區域，並獲得本層的太空站獎勵。"
	},
	["2"] = {
		2,
		"補給點",
		"activity_lost_space_icon_bjd_90",
		"太空站中隱藏的補給區域，其中有著豐厚的獎勵。似乎需要特殊的坐標資訊才能開啓"
	},
	["3"] = {
		3,
		"補給坐標",
		"activity_lost_space_icon_bjz_1_90",
		"記錄著神秘補給點的坐標資訊。收集齊3個後可以開啟補給點"
	},
	["4"] = {
		4,
		"殘留影像",
		"activity_lost_space_icon_xj",
		"前人留下的影像資料。獲得後會指示一個高價值獎勵所在的位置，無法保留到下一層。"
	},
	["5"] = {
		5,
		"拷貝裝置",
		"activity_lost_space_icon_double_90",
		"神秘的科技裝置，可以拷貝一份道具。獲得後會使下次探索獲得的獎勵數量翻倍（對特殊事件無效），可以保留至下一層。"
	},
	["6"] = {
		6,
		"雷射能量",
		"activity_lost_space_icon_nl",
		"啟動雷射裝置所必須的能量。收集一定數量後可以使用技能"
	}
}

return table
