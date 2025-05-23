﻿-- chunkname: @../../../Product/Bundles/Android/src/app/windows/DressCollectionWindow.lua

local DressCollectionWindow = class("DressCollectionWindow", import(".BaseWindow"))
local WindowTop = import("app.components.WindowTop")
local DressItem = class("DressItem", import("app.components.CopyComponent"))
local FixedMultiWrapContent = import("app.common.ui.FixedMultiWrapContent")

function DressCollectionWindow:ctor(name, params)
	DressCollectionWindow.super.ctor(self, name, params)
end

function DressCollectionWindow:initWindow()
	self:getUIComponent()
	DressCollectionWindow.super.initWindow()
	self:initData()
	self:initTopGroup()
	self:layout()
	self:registerEvent()
end

function DressCollectionWindow:getUIComponent()
	local winTrans = self.window_:NodeByName("group")

	self.midGroup_ = winTrans
	self.labelWinTitle_ = winTrans:ComponentByName("topGroup/labelWinTitle", typeof(UILabel))
	self.filterRoot = winTrans:NodeByName("filter")
	self.groupContent = self.midGroup_:NodeByName("groupContent").gameObject
	self.btnCircles = self.filterRoot:NodeByName("btnCircles").gameObject
	self.btnQualityChosen = self.btnCircles:NodeByName("btnQualityChosen").gameObject

	for i = 0, 5 do
		self["btnCircle" .. i] = self.btnCircles:NodeByName("btnCircle" .. i).gameObject
	end

	self.scroll_drag = self.groupContent:NodeByName("scroll_drag").gameObject
	self.scroll_view = self.groupContent:NodeByName("scroll_view").gameObject
	self.scroll_view_UIScrollView = self.groupContent:ComponentByName("scroll_view", typeof(UIScrollView))
	self.wrap_content = self.scroll_view:NodeByName("wrap_content").gameObject
	self.wrap_content_UIWrapContent = self.scroll_view:ComponentByName("wrap_content", typeof(UIWrapContent))
	self.dressItemEg = self.groupContent:NodeByName("dressItemEg").gameObject
	self.groupNone = winTrans:NodeByName("groupNone").gameObject
	self.labelNoneTips = self.groupNone:ComponentByName("labelNoneTips", typeof(UILabel))
	self.wrapContent_ = FixedMultiWrapContent.new(self.scroll_view_UIScrollView, self.wrap_content_UIWrapContent, self.dressItemEg, DressItem, self)
end

function DressCollectionWindow:playOpenAnimation(callback)
	DressCollectionWindow.super.playOpenAnimation(self, function()
		local y = self.midGroup_.localPosition.y

		self.playOpenAnimation_ = true

		local action1 = self:getSequence()

		self.midGroup_.localPosition.x = -720

		action1:Insert(0.2, self.midGroup_:DOLocalMove(Vector3(50, y, 0), 0.3))
		action1:Insert(0.5, self.midGroup_:DOLocalMove(Vector3(0, y, 0), 0.27))
		action1:AppendCallback(function()
			self.playOpenAnimation_ = false
		end)

		if callback then
			callback()
		end
	end)
end

function DressCollectionWindow:layout()
	self.labelWinTitle_.text = __("COLLECTION_SENPAI_DRESS")

	self:onQualityBtn(-1)
end

function DressCollectionWindow:initTopGroup()
	local items = {
		{
			id = xyd.ItemID.CRYSTAL
		},
		{
			id = xyd.ItemID.MANA
		}
	}

	self.windowTop_ = import("app.components.WindowTop").new(self.window_, self.name_)

	self.windowTop_:setItem(items)
end

function DressCollectionWindow:registerEvent()
	for k = 0, 5 do
		UIEventListener.Get(self["btnCircle" .. k]).onClick = function()
			self:onQualityBtn(k)
		end
	end
end

function DressCollectionWindow:initData()
	self.showQuality = 0
	self.items_arr = {}

	local dressIds = xyd.tables.senpaiDressTable:getShowIDs()
	local showIds = {}
	local time = xyd.getServerTime()

	for i in pairs(dressIds) do
		local dressTime = xyd.tables.senpaiDressTable:getShowInGuide(dressIds[i])

		if dressTime and (dressTime == 1 or dressTime > 1 and dressTime <= time) then
			table.insert(showIds, dressIds[i])
		end
	end

	table.sort(showIds, function(a, b)
		local a_item = xyd.tables.senpaiDressTable:getItems(a)[1]
		local a_qlt = xyd.tables.itemTable:getQuality(a_item)
		local b_item = xyd.tables.senpaiDressTable:getItems(b)[1]
		local b_qlt = xyd.tables.itemTable:getQuality(b_item)

		if a_qlt ~= b_qlt then
			return b_qlt < a_qlt
		else
			return a < b
		end
	end)

	for i = 1, #showIds do
		local dressId = showIds[i]
		local pos = xyd.tables.senpaiDressTable:getPos(dressId)
		local dressItemIds = xyd.tables.senpaiDressTable:getItems(dressId)
		local isGot = false

		if #xyd.models.dress:getHasStyles(dressId) > 0 then
			isGot = true
		end

		local data = {
			itemID = dressItemIds[#dressItemIds],
			isGot = isGot
		}

		if not self.items_arr[0] then
			self.items_arr[0] = {}
		end

		if not self.items_arr[pos] then
			self.items_arr[pos] = {}
		end

		table.insert(self.items_arr[0], data)
		table.insert(self.items_arr[pos], data)
	end
end

function DressCollectionWindow:onQualityBtn(index)
	local isPlaySoundId = true

	if self.showQuality ~= index or index == -1 then
		if index == -1 then
			index = 0
		end

		isPlaySoundId = false

		local pos = self["btnCircle" .. index].transform.localPosition

		self.btnQualityChosen:SetLocalPosition(pos.x, pos.y, pos.z)

		self.showQuality = index
	elseif self.showQuality == index then
		if self.showQuality == 0 then
			return
		else
			self:onQualityBtn(0)

			return
		end
	end

	if isPlaySoundId then
		xyd.SoundManager.get():playSound(xyd.SoundID.BUTTON)
	end

	if not self.items_arr[index] or #self.items_arr[index] == 0 then
		self.labelNoneTips.text = __("PERSON_DRESS_MAIN_" .. index + 16)

		self.groupNone:SetActive(true)
		self.scroll_view:SetActive(false)

		return
	else
		self.groupNone:SetActive(false)
		self.scroll_view:SetActive(true)
	end

	local infos = self:getInfos(index)

	self:waitForFrame(1, function()
		self.wrapContent_:setInfos(infos, {})
		self.scroll_view_UIScrollView:ResetPosition()
	end)
end

function DressCollectionWindow:getInfos(index)
	return self.items_arr[index]
end

function DressItem:ctor(go, parent)
	self.go = go
	self.parent = parent
	self.itemCon = self.go:NodeByName("itemCon").gameObject
end

function DressItem:update(index, realIndex, info)
	if not info then
		self.go:SetActive(false)

		return
	else
		self.go:SetActive(true)
	end

	local dress_id = xyd.tables.senpaiDressItemTable:getDressId(info.itemID)

	if self.dress_id and self.dressId == dress_id then
		return
	end

	self.curID = info.itemID

	local upArrowCallback

	if info.isGot then
		info.whiteMask = false
		info.whiteMaskAlpha = 0
	else
		info.whiteMask = true
		info.whiteMaskAlpha = 0.6
	end

	if not self.itemIcon then
		local params = {
			isAddUIDragScrollView = true,
			itemID = info.itemID,
			uiRoot = self.itemCon.gameObject,
			upArrowCallback = upArrowCallback,
			whiteMask = info.whiteMask,
			whiteMaskAlpha = info.whiteMaskAlpha,
			wndType = xyd.ItemTipsWndType.DRESS_COLLECTION
		}

		self.itemIcon = xyd.getItemIcon(params)
	else
		self.itemIcon:setInfo({
			itemID = info.itemID,
			upArrowCallback = upArrowCallback,
			whiteMask = info.whiteMask,
			whiteMaskAlpha = info.whiteMaskAlpha,
			wndType = xyd.ItemTipsWndType.DRESS_COLLECTION
		})
	end
end

return DressCollectionWindow
