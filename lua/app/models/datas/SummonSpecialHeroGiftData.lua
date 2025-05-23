﻿-- chunkname: @../../../Product/Bundles/Android/src/app/models/datas/SummonSpecialHeroGiftData.lua

local json = require("cjson")
local ActivityData = import("app.models.ActivityData")
local SummonSpecialHeroGiftData = class("SummonSpecialHeroGiftData", ActivityData, true)

function SummonSpecialHeroGiftData:getUpdateTime()
	if not self.update_time then
		return self:getEndTime()
	end

	return self.update_time + xyd.tables.activityTable:getLastTime(self.activity_id)
end

return SummonSpecialHeroGiftData
