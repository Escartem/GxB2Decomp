﻿-- chunkname: @../../../Product/Bundles/Android/src/lib/battle/ReportPet.lua

local PetTable = xyd.tables.petTable
local PetAttr = xyd.models.reportPetAttr
local ReportPet = class("ReportPet")
local INVALID_PET_ID = -1
local PetSkillTable = xyd.tables.petSkillTable
local PetExSkillTable = xyd.tables.petExskillTable
local SkillTable = xyd.tables.skillTable
local EffectTable = xyd.tables.effectTable

function ReportPet:ctor()
	self.isPet_ = true
	self.petID_ = INVALID_PET_ID
	self.effects_ = {}
	self.godExLevel = 0
	self.baseEffects = {}
end

function ReportPet:populate(params)
	self.playerID_ = tonumber(params.player_id or 0)
	self.petID_ = tonumber(params.pet_id or 0)
	self.tableID_ = tonumber(params.pet_id or 0)
	self.grade_ = tonumber(params.grade or 0)
	self.level_ = tonumber(params.lv or 1)
	self.skills_ = params.skills or {}
	self.exLevel_ = tonumber(params.ex_lv) or 0
	self.ver = params.ver or 0
end

function ReportPet:setupBattleAttrInfo()
	return
end

function ReportPet:isMonster()
	return false
end

function ReportPet:isPet()
	return true
end

function ReportPet:getBattleAttr(attrType)
	if not self.totalAttrs_ then
		self:setupBattleAttrInfo()
	end

	return self.totalAttrs_[attrType] or 0
end

function ReportPet:getSkillID(index)
	local petID = self:getTableID()

	if index == xyd.SKILL_INDEX.Energy then
		return PetTable:getEnergyID(petID) + self:getLevel() - 1
	end

	return 0
end

function ReportPet:getInfoByKey(key)
	if key == "exSkillID" then
		return PetTable:getExSkillID(self.tableID_)
	elseif string.sub(key, 1, 7) == "pasTier" then
		return PetTable:getPasTier(self.tableID_, string.sub(key, 8, 8))
	elseif string.sub(key, 1, 8) == "pasSkill" then
		return PetTable:getPasSkill(self.tableID_, string.sub(key, 9, 9))
	elseif key == "ver" then
		return PetTable:getVer(self.tableID_)
	end

	reportLog2("no key:" .. key)

	return nil
end

function ReportPet:getEnergyBase()
	return 0
end

function ReportPet:className()
	return "ReportBasePet"
end

function ReportPet:getTableID()
	return self.tableID_
end

function ReportPet:getLevel()
	return self.level_
end

function ReportPet:getGrade()
	return self.grade_
end

function ReportPet:getPetInfo()
	local petEffects = self:getEffect()
	local petPasSkills = self:getPasSkill()
	local petInfo = {
		petEffects = petEffects,
		petPasSkills = petPasSkills
	}

	return petInfo
end

function ReportPet:getExSkillLevID()
	local id = 0
	local exLevel = self.godExLevel + self.exLevel_

	if not exLevel or exLevel <= 0 then
		return id
	end

	local exSkillBaseID = self:getInfoByKey("exSkillID")

	if exSkillBaseID <= 0 then
		return id
	end

	id = exSkillBaseID + exLevel - 1

	return id
end

function ReportPet:getExEffects()
	local id = self:getExSkillLevID()

	if id == 0 then
		return {}
	end

	local effects = PetExSkillTable:getEffects(id)

	return effects
end

function ReportPet:getPasSkill()
	local id = self:getExSkillLevID()

	if id == 0 then
		return {}
	end

	local pasSkills = PetExSkillTable:getPasSkills(id)

	pasSkills = pasSkills or {}

	return pasSkills
end

function ReportPet:getAttrPasSkill()
	local skills = {}

	for i = 1, 4 do
		local pasTier = self:getInfoByKey("pasTier" .. i)

		if pasTier and pasTier <= self:getGrade() then
			local skill = self:getInfoByKey("pasSkill" .. i .. "Id")

			table.insert(skills, skill)
		else
			break
		end
	end

	return skills
end

function ReportPet:getSkillLev(index)
	return self.skills_[index] or 0
end

function ReportPet:getEffect()
	local attrPasSkills = self:getAttrPasSkill()
	local effects = {}

	for i, skillID in ipairs(attrPasSkills) do
		local tmpEffects = PetSkillTable:getEffect(skillID, self:getSkillLev(i))

		effects = xyd.arrayMerge(effects, tmpEffects)
	end

	local exEffects = self:getExEffects()

	self.baseEffects = xyd.arrayMerge(effects, exEffects)
	self.effects_ = PetAttr:attr(self)

	return self.effects_
end

function ReportPet:toParams()
	return {
		pet_id = self.petID_,
		table_id = self.tableID_,
		grade = self.grade_,
		lv = self.level_,
		skills = self.skills_,
		ex_lv = self.exLevel_,
		ver = self.ver
	}
end

return ReportPet
