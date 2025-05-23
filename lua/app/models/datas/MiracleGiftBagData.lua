﻿-- chunkname: @../../../Product/Bundles/Android/src/app/models/datas/MiracleGiftBagData.lua

local json = require("cjson")
local ActivityData = import("app.models.ActivityData")
local GiftBagData = import("app.models.datas.GiftBagData")
local MiracleGiftBagData = class("MiracleGiftBagData", ActivityData, true)

function MiracleGiftBagData:getUpdateTime()
	if self.update_time then
		return self:getEndTime()
	end

	return self.update_time + xyd.tables.activityTable:getLastTime(self.activity_id)
end

function MiracleGiftBagData:getRedMarkState()
	if not self:isFunctionOnOpen() then
		return false
	end

	if self:isFirstRedMark() then
		return true
	end

	for i = 1, #self.detail.awarded do
		if not self.detail.awarded[i] then
			return self.defRedMark
		end
	end

	return false
end

return MiracleGiftBagData
