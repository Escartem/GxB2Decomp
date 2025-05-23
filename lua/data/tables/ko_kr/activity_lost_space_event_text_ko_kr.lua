﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/ko_kr/activity_lost_space_event_text_ko_kr.lua

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
		"도약점",
		"activity_lost_space_icon_xyg_90",
		"새로운 구역으로 도약하여 탐사를 진행합니다. 클릭 후 현재 위치를 떠나 본 스테이지의 보상을 획득합니다."
	},
	["2"] = {
		2,
		"보급처",
		"activity_lost_space_icon_bjd_90",
		"우주 정거장에 숨겨진 보급처. 안에 푸짐한 보상이 있습니다. 특별한 좌표를 파악해야 오픈 가능합니다."
	},
	["3"] = {
		3,
		"보급 좌표",
		"activity_lost_space_icon_bjz_1_90",
		"신비한 보급처 위치를 기록한 좌표. 3개를 획득 후 보급처를 열릴 수 있습니다."
	},
	["4"] = {
		4,
		"오래된 영상",
		"activity_lost_space_icon_xj",
		"오래 전 누군가가 영상으로 남겨둔 자료로, 획득 후 가치가 높은 보상의 위치를 알 수 있습니다. 단, 다음 스테이지까지 보류되지 않습니다."
	},
	["5"] = {
		5,
		"복사 장치",
		"activity_lost_space_icon_double_90",
		"신비한 과학 장치. 아이템을 1회 복사 가능. 획득 후 다음 탐사에서 2배의 보상을 획득할 수 있습니다(특별 사건에 적용 불가). 다음 스테이지까지 보류됩니다."
	},
	["6"] = {
		6,
		"레이저 에너지",
		"activity_lost_space_icon_nl",
		"레이저 장치 시동 시 필요한 에너지. 일정 수량의 레이저 에너지를 획득 후 스킬을 사용 가능합니다."
	}
}

return table
