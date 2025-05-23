﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/ko_kr/activity_lost_space_skill_text_ko_kr.lua

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
		"소탕 레이저",
		32,
		"activity_lost_space_icon_skill2",
		"가이드 레이저. 마지막으로 탐사를 완료한 탐사 지점을 기준으로 가로줄의 모든 탐사 지점을 탐사합니다."
	},
	["2"] = {
		2,
		"십자 레이저",
		42,
		"activity_lost_space_icon_skill1",
		"가이드 레이저. 마지막으로 탐사를 완료한 탐사 지점을 기준으로 상하좌우에 위치한 탐사 지점을 방향별로 2개씩 탐사합니다."
	},
	["3"] = {
		3,
		"충전 레이저",
		52,
		"activity_lost_space_icon_skill3",
		"가이드 레이저. 마지막으로 탐사를 완료한 탐사 지점을 기준으로 위아래의 탐사 지점을 방향별로 3개씩 탐사합니다. 스킬을 한번 사용할 때마다 스킬 발동에 필요한 레이저 에너지가 6점씩 감소되며, 최대 3회까지 감소됩니다.(현재 {1}회 감소)"
	},
	["4"] = {
		4,
		"고리형 레이저",
		43,
		"activity_lost_space_icon_skill4",
		"가이드 레이저. 마지막으로 탐사를 완료한 탐사 지점을 기준으로 옆에 서로 인접한는 모든 탐사 지점을 탐사합니다."
	},
	["5"] = {
		5,
		"신비한 레이저",
		35,
		"activity_lost_space_icon_skill5",
		"가이드 레이저. 랜덤으로 탐사 지점 5개를 탐사합니다.(탐사 불가한 지역의 탐사 지점을 우선적으로 탐사함)"
	},
	["6"] = {
		6,
		"충전 레이저",
		34,
		"activity_lost_space_icon_skill6",
		"가이드 레이저. 마지막으로 탐사를 완료한 탐사 지점을 기준으로 위아래의 탐사 지점을 방향별로 1개씩 탐사합니다. 스킬을 한번 사용할 때마다 위로부터 탐사 가능한 탐사 지점 1개 증가되며 최대 4회까지 증가됩니다.(현재 {1}회 증가)"
	}
}

return table
