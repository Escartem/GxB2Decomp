﻿-- chunkname: @../../../Product/Bundles/Android/src/app/windows/activity/ActivityRecallLottery.lua

local resizePosYShort = {
	-257,
	-257,
	-458,
	-460,
	-655,
	-650
}
local resizePosYLong = {
	-385,
	-385,
	-586,
	-588,
	-792,
	-787
}
local ActivityRecallLottery = class("ActivityRecallLottery", import(".ActivityContent"))
local CountDown = import("app.components.CountDown")
local cjson = require("cjson")

function ActivityRecallLottery:ctor(parentGO, params)
	ActivityRecallLottery.super.ctor(self, parentGO, params)
end

function ActivityRecallLottery:getPrefabPath()
	return "Prefabs/Windows/activity/activity_recall_lottery"
end

function ActivityRecallLottery:resizeToParent()
	ActivityRecallLottery.super.resizeToParent(self)
	self:resizePosY(self.imgBg2, -75, -169)
	self:resizePosY(self.imgBg3, -82, -176)
	self:resizePosY(self.imgText, 57, 11)
	self:resizePosY(self.resItem, -40, -43)
	self:resizePosY(self.btnHelp, -39, -42)
	self:resizePosY(self.btnAwake, -803, -956)
	self:resizePosY(self.btnRecall, -803, -956)
	self:resizePosY(self.recallEffectNode, -487.5, -575.5)
	self:resizePosY(self.labelAwake, -58, -65)
	self:resizePosY(self.labelRecall, -58, -65)

	for i = 1, 6 do
		self:resizePosY(self["stage" .. i], resizePosYShort[i], resizePosYLong[i])
	end
end

function ActivityRecallLottery:initUI()
	self.curStage = self.activityData.detail.level

	self:getUIComponent()
	ActivityRecallLottery.super.initUI(self)
	self:initUIComponent()
	self:register()
end

function ActivityRecallLottery:getUIComponent()
	local go = self.go

	self.imgBg2 = go:NodeByName("imgBg2").gameObject
	self.imgBg3 = go:NodeByName("imgBg3").gameObject
	self.imgText = go:ComponentByName("imgText", typeof(UISprite))
	self.resItem = go:NodeByName("resItem").gameObject
	self.resNum = self.resItem:ComponentByName("num", typeof(UILabel))
	self.resPlus = self.resItem:NodeByName("btnPlus").gameObject
	self.btnHelp = go:NodeByName("btnHelp").gameObject
	self.btnAwake = go:NodeByName("btnAwake").gameObject
	self.labelAwake = self.btnAwake:ComponentByName("labelAwake", typeof(UILabel))
	self.awakeRedPoint = self.btnAwake:NodeByName("redPoint").gameObject
	self.btnRecall = go:NodeByName("btnRecall").gameObject
	self.labelRecall = self.btnRecall:ComponentByName("labelRecall", typeof(UILabel))
	self.labelRecallCost = self.btnRecall:ComponentByName("labelCost", typeof(UILabel))
	self.recallRedPoint = self.btnRecall:NodeByName("redPoint").gameObject
	self.groupStage = go:NodeByName("groupStage").gameObject
	self.unlockEffectNode = self.groupStage:NodeByName("unlockEffect").gameObject

	for i = 1, 6 do
		self["stage" .. i] = self.groupStage:ComponentByName("stage" .. i, typeof(UISprite))
		self["groupIcon" .. i] = self["stage" .. i]:NodeByName("groupIcon").gameObject
		self["stageMask" .. i] = self["stage" .. i]:NodeByName("mask").gameObject
		self["stageLockSign" .. i] = self["stage" .. i]:NodeByName("lockSign").gameObject
		self["stageFinishSign" .. i] = self["stage" .. i]:ComponentByName("finishSign", typeof(UISprite))
		self["stageRedMark" .. i] = self["stage" .. i]:NodeByName("redMark").gameObject
	end

	self.recallEffectNode = go:NodeByName("recallEffect").gameObject
	self.mask = go:NodeByName("mask").gameObject
end

function ActivityRecallLottery:initUIComponent()
	xyd.setUISpriteAsync(self.imgText, nil, "activity_recall_lottery_text_" .. xyd.Global.lang, function()
		self.imgText:SetLocalScale(0.92, 0.92, 1)
	end, nil, true)

	self.resNum.text = xyd.models.backpack:getItemNumByID(xyd.ItemID.RECALL_HOURGLASS)
	self.labelAwake.text = __("ACTIVITY_VAMPIRE_GAMBLE_BUTTON01")
	self.labelRecall.text = __("ACTIVITY_VAMPIRE_GAMBLE_BUTTON02")

	if xyd.Global.lang == "fr_fr" then
		self.labelRecall:X(10)
	end

	self.mask:SetActive(false)

	self.cardEffect = {}
	self.awardItems = {}
	self.awardState = {}

	for i = 1, 6 do
		local awards = xyd.tables.activityVampireGambleTable:getAward(i)
		local bigAwardNum = xyd.tables.activityVampireGambleTable:getBigAwardNum(i)

		for j = 1, bigAwardNum do
			local award = awards[j]
			local item = xyd.getItemIcon({
				scale = 0.4351851851851852,
				labelNumScale = 1.1,
				show_has_num = true,
				noClick = true,
				uiRoot = self["groupIcon" .. i],
				itemID = award[1],
				num = award[2],
				wndType = xyd.ItemTipsWndType.ACTIVITY,
				dragScrollView = self.scrollView
			})

			if not self.awardItems[i] then
				self.awardItems[i] = {}
			end

			table.insert(self.awardItems[i], item)
		end

		self["groupIcon" .. i]:GetComponent(typeof(UILayout)):Reposition()
		xyd.setUISpriteAsync(self["stageFinishSign" .. i], nil, "activity_recall_lottery_finish_" .. xyd.Global.lang)
		self:updateAwardItem(i)
	end

	self:updateStage()
	self:updateAwakeBtn()
end

function ActivityRecallLottery:updateStage()
	for i = 1, 6 do
		self["stageMask" .. i]:SetActive(false)
		self["stageFinishSign" .. i]:SetActive(false)
		self["stageLockSign" .. i]:SetActive(false)
		self["stageRedMark" .. i]:SetActive(false)

		if self.activityData.detail.awards[i] and #self.activityData.detail.awards[i] == 0 and i < self.activityData.detail.level then
			self["stageFinishSign" .. i]:SetActive(true)
		end

		if i > self.activityData.detail.level then
			self["stageLockSign" .. i]:SetActive(true)
			self["stageMask" .. i]:SetActive(true)
		end

		local timeStamp = xyd.db.misc:getValue("activity_recall_lottery_stage_redmark" .. i .. self.activityData.end_time)

		if i <= self.activityData.detail.level and not timeStamp then
			self["stageRedMark" .. i]:SetActive(true)
		end

		if i == self.curStage then
			if self.cardEffect[i] then
				self.cardEffect[i]:SetActive(true)
			else
				self.cardEffect[i] = xyd.Spine.new(self["stage" .. i].gameObject)

				self.cardEffect[i]:setInfo("exercise_card", function()
					self.cardEffect[i]:play("texioa01", 0)
				end)
			end
		elseif self.cardEffect[i] then
			self.cardEffect[i]:SetActive(false)
		end
	end

	self:updateRecallBtn()
end

function ActivityRecallLottery:updateAwardItem(stage)
	self.awardState[stage] = {}

	local awards = xyd.tables.activityVampireGambleTable:getAward(stage)

	if self.activityData.detail.awards[stage] then
		for k in pairs(awards) do
			self.awardState[stage][k] = 1
		end
	end

	if self.activityData.detail.awards[stage] then
		for k, v in pairs(self.activityData.detail.awards[stage]) do
			self.awardState[stage][v] = 0
		end
	end

	for i = 1, #self.awardItems[stage] do
		self.awardItems[stage][i]:setChoose(self.awardState[stage][i] == 1)
	end
end

function ActivityRecallLottery:updateAwakeBtn()
	local awakeCost = xyd.tables.miscTable:split2Cost("activity_vampire_awake", "value", "|#")[1]

	if xyd.models.backpack:getItemNumByID(awakeCost[1]) >= awakeCost[2] then
		self.awakeRedPoint:SetActive(true)
	else
		self.awakeRedPoint:SetActive(false)
	end
end

function ActivityRecallLottery:updateRecallBtn()
	local recallCost = xyd.tables.activityVampireGambleTable:getCost(self.curStage)

	if xyd.models.backpack:getItemNumByID(recallCost[1]) >= recallCost[2] then
		self.recallRedPoint:SetActive(true)
	else
		self.recallRedPoint:SetActive(false)
	end

	self.labelRecallCost.text = "x" .. recallCost[2]
end

function ActivityRecallLottery:register()
	UIEventListener.Get(self.btnHelp).onClick = function()
		xyd.WindowManager:get():openWindow("help_window", {
			key = "ACTIVITY_VAMPIRE_GAMBLE_HELP"
		})
	end
	UIEventListener.Get(self.resPlus).onClick = function()
		xyd.WindowManager:get():openWindow("activity_item_getway_window", {
			itemID = xyd.ItemID.RECALL_HOURGLASS
		})
	end
	UIEventListener.Get(self.btnAwake).onClick = function()
		xyd.WindowManager:get():openWindow("activity_recall_lottery_awake_window")
	end
	UIEventListener.Get(self.btnRecall).onClick = function()
		local timeStamp = xyd.db.misc:getValue("activity_recall_lottery_last_recall_time" .. self.curStage)

		if timeStamp and xyd.isToday(timeStamp) then
			local cost = xyd.tables.activityVampireGambleTable:getCost(self.curStage)

			if xyd.models.backpack:getItemNumByID(cost[1]) >= cost[2] then
				self:sendReq()
			else
				xyd.alertTips(__("NOT_ENOUGH", xyd.tables.itemTable:getName(cost[1])))
			end
		else
			local unlockItem = xyd.tables.miscTable:split2Cost("activity_vampire_unlock", "value", "|#")[1]
			local unlockProb = xyd.tables.activityVampireGambleTable:getUnlockProb(self.curStage)
			local awards = xyd.tables.activityVampireGambleTable:getAward(self.curStage)
			local params = {
				windowTpye = 2,
				winTitleText = __("TIME_CLOISTER_TEXT29"),
				groupTitleText1 = unlockProb == 0 and __("ACTIVITY_VAMPIRE_GAMBLE_AWARD01") or __("ACTIVITY_VAMPIRE_GAMBLE_AWARD02"),
				groupTitleText2 = __("ACTIVITY_VAMPIRE_GAMBLE_AWARD01"),
				awardData1 = unlockProb == 0 and awards or {
					{
						unlockItem[1],
						unlockItem[2]
					}
				},
				awardData2 = unlockProb ~= 0 and awards or {},
				setChoose1 = unlockProb == 0 and self.awardState[self.curStage] or {
					self.activityData.detail.probs[self.curStage] == -1 and 1 or 0
				},
				setChoose2 = unlockProb ~= 0 and self.awardState[self.curStage] or {},
				confirmCallback = function(isSkip)
					local cost = xyd.tables.activityVampireGambleTable:getCost(self.curStage)

					if xyd.models.backpack:getItemNumByID(cost[1]) >= cost[2] then
						self:sendReq()

						if isSkip then
							xyd.db.misc:setValue({
								key = "activity_recall_lottery_last_recall_time" .. self.curStage,
								value = xyd.getServerTime()
							})
						end
					else
						xyd.alertTips(__("NOT_ENOUGH", xyd.tables.itemTable:getName(cost[1])))
					end
				end
			}

			xyd.WindowManager:get():openWindow("activity_recall_lottery_award_preview_window", params)
		end
	end

	for i = 1, 6 do
		UIEventListener.Get(self["stage" .. i].gameObject).onClick = function()
			if self.activityData.detail.level < i then
				xyd.alertTips(__("ACTIVITY_VAMPIRE_GAMBLE_UNLOCK_TIPS"))
			elseif self.activityData.detail.awards[i] and #self.activityData.detail.awards[i] == 0 then
				xyd.alertTips(__("ACTIVITY_VAMPIRE_GAMBLE_ALL_TIPS"))
			else
				self.curStage = i

				xyd.alertTips(__("ACTIVITY_VAMPIRE_GAMBLE_PICK_TIPS", __("ACTIVITY_VAMPIRE_GAMBLE_PIC_TEXT0" .. self.curStage)))
				self:updateStage()
			end
		end
		UIEventListener.Get(self["groupIcon" .. i].gameObject).onClick = function()
			local unlockItem = xyd.tables.miscTable:split2Cost("activity_vampire_unlock", "value", "|#")[1]
			local unlockProb = xyd.tables.activityVampireGambleTable:getUnlockProb(i)
			local awards = xyd.tables.activityVampireGambleTable:getAward(i)
			local params = {
				winTitleText = __("TIME_CLOISTER_TEXT29"),
				groupTitleText1 = unlockProb == 0 and __("ACTIVITY_VAMPIRE_GAMBLE_AWARD01") or __("ACTIVITY_VAMPIRE_GAMBLE_AWARD02"),
				groupTitleText2 = __("ACTIVITY_VAMPIRE_GAMBLE_AWARD01"),
				awardData1 = unlockProb == 0 and awards or {
					{
						unlockItem[1],
						unlockItem[2]
					}
				},
				awardData2 = unlockProb ~= 0 and awards or {},
				setChoose1 = unlockProb == 0 and self.awardState[i] or {
					self.activityData.detail.probs[i] == -1 and 1 or 0
				},
				setChoose2 = unlockProb ~= 0 and self.awardState[i] or {}
			}

			xyd.WindowManager:get():openWindow("activity_recall_lottery_award_preview_window", params)
			xyd.db.misc:setValue({
				value = 1,
				key = "activity_recall_lottery_stage_redmark" .. i .. self.activityData.end_time
			})
			self["stageRedMark" .. i]:SetActive(false)
		end
	end

	self:registerEvent(xyd.event.ITEM_CHANGE, function()
		self.resNum.text = xyd.models.backpack:getItemNumByID(xyd.ItemID.RECALL_HOURGLASS)

		self:updateAwakeBtn()
		self:updateRecallBtn()
	end)
	self:registerEvent(xyd.event.GET_ACTIVITY_AWARD, function(event)
		local data = xyd.decodeProtoBuf(event.data)

		if data.activity_id ~= xyd.ActivityID.ACTIVITY_RECALL_LOTTERY then
			return
		end

		local detail = cjson.decode(data.detail)

		if detail.type == 1 then
			self:updateAwardItem(self.curStage)

			if detail.index and detail.index ~= 0 and detail.index ~= -1 then
				local unlockProb = xyd.tables.activityVampireGambleTable:getUnlockProb(self.curStage)

				if self.activityData:getBigAwardJudge() then
					local btnSureText = "ACTIVITY_VAMPIRE_GAMBLE_RETURN"
					local btnLabelText = "ACTIVITY_VAMPIRE_GAMBLE_TEXT05"
					local isNeedCostBtn = true

					local function buyCallback()
						local cost = xyd.tables.activityVampireGambleTable:getCost(self.curStage)

						if xyd.models.backpack:getItemNumByID(cost[1]) >= cost[2] then
							self:sendReq()
						else
							xyd.alertTips(__("NOT_ENOUGH", xyd.tables.itemTable:getName(cost[1])))
						end
					end

					local sureCallback

					if #self.activityData.detail.awards[self.curStage] == 0 and unlockProb == 0 then
						isNeedCostBtn = false

						function sureCallback()
							local params = {
								needCancelBtn = false,
								imgUrl = "activity_recall_lottery_stage6",
								winTitleText = __("TIPS"),
								labelTipText = self.curStage == 5 and __("ACTIVITY_VAMPIRE_GAMBLE_FIVE_TIPS", __("ACTIVITY_VAMPIRE_GAMBLE_PIC_TEXT06")) or __("ACTIVITY_VAMPIRE_GAMBLE_SIX_TIPS"),
								labelSureText = __("ACTIVITY_VAMPIRE_GAMBLE_BUTTON04"),
								sureCallback = function()
									if self.curStage == 5 then
										self:playUnlockEffect()
									else
										self:resetLastStage()
									end
								end,
								cancelCallback = function()
									self:updateStage()
								end
							}

							xyd.WindowManager:get():openWindow("activity_recall_lottery_tip_window", params)
						end
					elseif #self.activityData.detail.awards[self.curStage] == 0 and unlockProb ~= 0 and self.activityData.detail.probs[self.curStage] == -1 then
						isNeedCostBtn = false

						function sureCallback()
							xyd.alertTips(__("ACTIVITY_VAMPIRE_GAMBLE_AUTO_TIPS"))
							self:calculateNextStage()
							self:updateStage()
						end
					end

					xyd.openWindow("gamble_rewards_window", {
						wnd_type = 4,
						data = detail.items,
						btnSureText = btnSureText,
						isNeedCostBtn = isNeedCostBtn,
						cost = xyd.tables.activityVampireGambleTable:getCost(self.curStage),
						btnLabelText = btnLabelText,
						buyCallback = buyCallback,
						sureCallback = sureCallback,
						callback = sureCallback
					})
				else
					if #self.activityData.detail.awards[self.curStage] == 0 and unlockProb == 0 then
						local params = {
							needCancelBtn = false,
							imgUrl = "activity_recall_lottery_stage6",
							winTitleText = __("TIPS"),
							labelTipText = self.curStage == 5 and __("ACTIVITY_VAMPIRE_GAMBLE_FIVE_TIPS", __("ACTIVITY_VAMPIRE_GAMBLE_PIC_TEXT06")) or __("ACTIVITY_VAMPIRE_GAMBLE_SIX_TIPS"),
							labelSureText = __("ACTIVITY_VAMPIRE_GAMBLE_BUTTON04"),
							sureCallback = function()
								if self.curStage == 5 then
									self:playUnlockEffect()
								else
									self:resetLastStage()
								end
							end,
							cancelCallback = function()
								self:updateStage()
							end
						}

						xyd.WindowManager:get():openWindow("activity_recall_lottery_tip_window", params)
					elseif #self.activityData.detail.awards[self.curStage] == 0 and unlockProb ~= 0 and self.activityData.detail.probs[self.curStage] == -1 then
						xyd.alertTips(__("ACTIVITY_VAMPIRE_GAMBLE_AUTO_TIPS"))
						self:calculateNextStage()
						self:updateStage()
					end

					xyd.models.itemFloatModel:pushNewItems(detail.items)
				end
			else
				local params = {
					winTitleText = __("TIPS"),
					labelTipText = __("ACTIVITY_VAMPIRE_GAMBLE_TEXT01", __("ACTIVITY_VAMPIRE_GAMBLE_PIC_TEXT0" .. self.curStage + 1)),
					labelCancelText = __("ACTIVITY_VAMPIRE_GAMBLE_BUTTON03"),
					labelSureText = __("ACTIVITY_VAMPIRE_GAMBLE_BUTTON04"),
					imgUrl = "activity_recall_lottery_stage" .. self.curStage + 1,
					sureCallback = function()
						self:playUnlockEffect()
					end,
					cancelCallback = function()
						self:updateStage()
					end,
					needCancelBtn = #self.activityData.detail.awards[self.curStage] ~= 0
				}

				xyd.WindowManager:get():openWindow("activity_recall_lottery_tip_window", params)
			end
		end
	end)
end

function ActivityRecallLottery:calculateNextStage()
	self.curStage = self.activityData.detail.level

	if self.activityData.detail.level >= 5 then
		local i = self.activityData:getCurStage()

		while i >= 1 do
			if self.activityData.detail.awards[i] and #self.activityData.detail.awards[i] > 0 then
				self.curStage = i

				return
			end

			i = i - 1
		end

		i = self.activityData:getCurStage()

		while i <= 6 do
			if self.activityData.detail.awards[i] and #self.activityData.detail.awards[i] > 0 then
				self.curStage = i

				return
			end

			i = i + 1
		end
	end
end

function ActivityRecallLottery:playUnlockEffect()
	self.mask:SetActive(true)

	local cardTran = self["stage" .. self.curStage + 1].transform.localPosition
	local lockTran = self["stageLockSign" .. self.curStage + 1].transform.localPosition

	self.unlockEffectNode:SetLocalPosition(cardTran.x + lockTran.x, cardTran.y + lockTran.y, cardTran.z + lockTran.z)

	local function callback()
		self.curStage = self.curStage + 1

		self:updateStage()
		self.mask:SetActive(false)
	end

	if not self.unlockEffect then
		self.unlockEffect = xyd.Spine.new(self.unlockEffectNode.gameObject)

		self.unlockEffect:setInfo("exercise_lock", function()
			self["stageLockSign" .. self.curStage + 1]:SetActive(false)
			self.unlockEffect:play("unlock", 1, nil, callback)
		end)
	else
		self.unlockEffect:play("unlock", 1, nil, callback)
	end
end

function ActivityRecallLottery:sendReq()
	local function effectCallback()
		xyd.models.activity:reqAwardWithParams(xyd.ActivityID.ACTIVITY_RECALL_LOTTERY, cjson.encode({
			type = 1,
			level = self.curStage
		}))
		self.activityData:setCurStage(self.curStage)
		self.mask:SetActive(false)
		self.recallEffect:destroy()

		self.recallEffect = nil
	end

	self.mask:SetActive(true)

	self.recallEffect = xyd.Spine.new(self.recallEffectNode.gameObject)

	self.recallEffect:setInfo("exercise_senpai", function()
		self.recallEffect:play("hit", 1, nil, effectCallback)
		self.recallEffect:startAtFrame(0)
	end)
end

function ActivityRecallLottery:resetLastStage()
	self.activityData.detail.awards[6] = {}

	local awards = xyd.tables.activityVampireGambleTable:getAward(6)

	for i = 1, #awards do
		table.insert(self.activityData.detail.awards[6], i)
	end

	self:updateStage()
	self:updateAwardItem(6)
end

return ActivityRecallLottery
