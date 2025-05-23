﻿-- chunkname: @../../../Product/Bundles/Android/src/app/models/HeroAttr.lua

local HeroAttr = class("HeroAttr", import("app.models.BaseModel"))

function HeroAttr:ctor()
	self.buffTable = xyd.tables.dBuffTable
	self.heroTable = xyd.tables.partnerTable
	self.skillTable = xyd.tables.skillTable
	self.equipTable = xyd.tables.equipTable
	self.effectTable = xyd.tables.effectTable
	self.monsterTable = xyd.tables.monsterTable
	self.guildSkillTable = xyd.tables.guildSkillTable
	self.appointmentTable = xyd.tables.datesTable
	self.skillResonateEffectTable = xyd.tables.skillResonateEffectTable
	self.starOriginListTable = xyd.tables.starOriginListTable
	self.collectionSkinEffectTable = xyd.tables.collectionSkinEffectTable
	self.starOriginTable = xyd.tables.starOriginTable
	self.soulEquip1Table = xyd.tables.soulEquip1Table
	self.soulEquip1ExBuffTable = xyd.tables.soulEquip1ExBuffTable
	self.soulEquip2Table = xyd.tables.soulEquip2Table
	self.soulEquip2BaseBuffTable = xyd.tables.soulEquip2BaseBuffTable
	self.soulEquip2ExBuffTable = xyd.tables.soulEquip2ExBuffTable
	self.soulEquip2GroupTable = xyd.tables.soulEquip2GroupTable
	self.isPercent = nil

	self:init()
end

function HeroAttr:init()
	if self.isPercent == nil then
		self.isPercent = {}

		local buffs = self.buffTable:getBuffs()

		for name in pairs(buffs) do
			if self.buffTable:isPercent(name) then
				self.isPercent[name] = true
			end
		end
	end
end

function HeroAttr:attr(hero, params)
	local tableID = hero:getTableID()

	if hero:isMonster() then
		tableID = hero:getHeroTableID()
	end

	params = params or {}

	local isBattle = params.isBattle
	local grade = params.grade and params.grade or hero:getGrade()
	local level = params.level and params.level or hero:getLevel()
	local awake = params.awake and params.awake or hero:getAwake()
	local group = hero:getGroup()
	local job = hero:getJob()
	local growAtk = self.heroTable:growAtk(tableID)
	local growHp = self.heroTable:growHp(tableID)
	local growArm = self.heroTable:growArm(tableID)
	local growSpd = self.heroTable:growSpd(tableID)

	if awake and awake > 0 and awake < 6 then
		local awakeGrow = self.heroTable:awakeGrow(tableID)
		local curAwakeGrow = xyd.split(awakeGrow[awake], "#", true)

		growAtk = curAwakeGrow[1] or 0
		growHp = curAwakeGrow[2] or 0
		growArm = curAwakeGrow[3] or 0
		growSpd = curAwakeGrow[4] or 0
	end

	local base = {
		hp = (self.heroTable:getBaseHp(tableID) + (level - 1) * growHp) * (1 + grade * 0.2),
		atk = (self.heroTable:getBaseAtk(tableID) + (level - 1) * growAtk) * (1 + grade * 0.2),
		arm = self.heroTable:getBaseArm(tableID) + (level - 1) * growArm,
		spd = (self.heroTable:getBaseSpd(tableID) + (level - 1) * growSpd) * (1 + grade * 0.1)
	}

	if hero:isMonster() then
		base.spd = self.heroTable:getBaseSpd(tableID)
	end

	local chimeArr = {}

	local function calChime()
		if hero.isReportHero then
			if hero.chimeBonus then
				for k, v in pairs(self:getChimeAttr(hero, hero.chimeBonus)) do
					chimeArr[k] = tonumber(v)
				end
			end
		elseif not params.isHeroBook then
			for k, v in pairs(xyd.models.shrine:getChimeAttr(hero)) do
				chimeArr[k] = tonumber(v)
			end
		end
	end

	if not params.isEntrance then
		calChime()
	end

	local starOrigin = {}

	local function calStarOrigin()
		if not params.isHeroBook and (hero:getStarOrigin() or params.fullStarOrigin) then
			for k, v in pairs(self:getStarOrigin(hero, params.fullStarOrigin)) do
				starOrigin[k] = tonumber(v)
			end
		end
	end

	calStarOrigin()

	local skinEffects = {}
	local skinLev = 0

	if hero:getSkinID() > 0 then
		if hero.isReportHero then
			skinLev = hero.skinBonus or 0
		else
			skinLev = xyd.models.collection:getSkinCollectionLevel()
		end
	end

	local function calSkinEffect()
		if not params.isHeroBook and skinLev and skinLev > 0 then
			local effects = self:getSkinEffect(hero, skinLev)

			for k, v in pairs(effects) do
				skinEffects[k] = tonumber(v)
			end
		end
	end

	calSkinEffect()

	local souls = {}

	local function calSouls()
		souls = self:getSouls(hero.souls)
	end

	calSouls()

	local extra = {}
	local isPercent = self.isPercent

	local function addAttr(name, value)
		value = tonumber(value)

		if isPercent[name] then
			if not extra[name] then
				extra[name] = {}
			end

			table.insert(extra[name], value)
		else
			extra[name] = (extra[name] or 0) + value
		end
	end

	if hero:getGroup() == xyd.PartnerGroup.TIANYI then
		local effects = self.skillResonateEffectTable:getEffectByLevel(hero:getHeroTableID(), hero:getTotalExLev() + 4)

		for k, v in ipairs(effects) do
			addAttr(v[1], v[2])
		end
	end

	local otherPower = 0
	local equips = hero:getEquipment()

	if equips then
		local suits = {}

		for _, id in ipairs(equips) do
			if id <= 0 or not self.equipTable:isHasKey(id) then
				-- block empty
			else
				local power = self.equipTable:getPower(id)

				if power > 0 then
					otherPower = otherPower + power
				else
					for j = 1, 4 do
						local attr = self.equipTable:getBase(id, j)

						if #attr > 0 then
							addAttr(attr[1], attr[2])
						end
					end

					if self.equipTable:getGroup(id) == group or self.equipTable:getJob(id) == job then
						local acts = self.equipTable:getAct(id)

						for _, act in ipairs(acts) do
							addAttr(act[1], act[2])
						end
					end

					local form = self.equipTable:getForm(id)

					if #form > 0 then
						local suit

						for j = 1, #suits do
							local s = suits[j]

							if xyd.arrayEqual(s.form, form) then
								suit = s

								break
							end
						end

						if suit then
							suit.num = suit.num + 1
						else
							table.insert(suits, {
								num = 1,
								form = form,
								id = id
							})
						end
					end
				end
			end
		end

		for i = 1, #suits do
			local suit = suits[i]

			for j = 1, suit.num - 1 do
				local attr = self.equipTable:getSuit(suit.id, j)

				if #attr > 0 then
					addAttr(attr[1], attr[2])
				end
			end
		end
	end

	local function calculateOne(name, nameP)
		if nameP == nil then
			nameP = nil
		end

		local n = math.floor(base[name] or 0) + math.floor(extra[name] or 0)

		if nameP ~= nil and extra[nameP] then
			local flag = false

			if n == 0 then
				n = 1
				flag = true
			end

			for _, p in ipairs(extra[nameP]) do
				if flag then
					n = n + n * p
				else
					n = n + math.floor(n * p)
				end
			end
		end

		if chimeArr and chimeArr[name] then
			n = n + chimeArr[name]
		end

		if starOrigin then
			if starOrigin[name] then
				n = n + starOrigin[name]
			elseif starOrigin[nameP] then
				if n == 0 then
					n = 1
				end

				n = n + starOrigin[nameP]
			end
		end

		if souls and souls[name] then
			n = n + math.floor(souls[name])
		end

		if skinEffects and skinEffects[name] then
			n = n + skinEffects[name]
		end

		return n
	end

	local function calGskill(isEntrance)
		if hero:getSpecialType() == 1 then
			return
		end

		local skills = xyd.tables.guildSkillTable:getJobSkills(hero:getJob())

		for _, skillID in ipairs(skills) do
			local buffs = {}

			if hero.__cname == "ReportHero" then
				buffs = hero:getGuildBuff(skillID)
			else
				local lev = xyd.models.guild:getSkillLevByID(skillID)

				if isEntrance == true then
					lev = xyd.tables.guildSkillTable:getLevMax(skillID)
				end

				if lev > 0 then
					buffs = xyd.tables.guildSkillTable:getSkillBuffs(skillID, lev)
				end
			end

			for i = 1, #buffs do
				local buff = buffs[i]
				local buffName = xyd.jobBuff[buff.type]

				if buffName then
					addAttr(buffName, buff.num)
				end
			end
		end
	end

	local function calExploreSkill()
		local travel = hero.travel

		if travel and travel > 0 then
			local buff = xyd.tables.exploreTrainingTable:getEffect(travel % 100, (travel - travel % 100) / 100)

			addAttr(buff[1], buff[2])
		end
	end

	if not params.isHeroBook and not hero:isMonster() then
		if not params.isEntrance then
			calGskill()
			calExploreSkill()
		else
			calGskill(true)
		end
	end

	local function calLove()
		local lovePoint = hero:getLovePoint()

		if lovePoint <= 0 then
			return
		end

		local loveAttrs = xyd.tables.datesTable:getAttr(lovePoint)

		if #loveAttrs > 0 then
			for i = 1, #loveAttrs do
				local loveAttr = loveAttrs[i]

				addAttr(loveAttr[1], loveAttr[2])
			end
		end
	end

	if not params.isEntrance then
		calLove()
	end

	local function calculate(power)
		if power == nil then
			power = nil
		end

		local attribs = {
			hp = calculateOne(xyd.BUFF_HP, xyd.BUFF_HP_P),
			atk = calculateOne(xyd.BUFF_ATK, xyd.BUFF_ATK_P),
			arm = calculateOne(xyd.BUFF_ARM, xyd.BUFF_ARM_P),
			spd = calculateOne(xyd.BUFF_SPD),
			hit = calculateOne(xyd.BUFF_HIT),
			miss = calculateOne(xyd.BUFF_MISS),
			crit = calculateOne(xyd.BUFF_CRIT),
			unCrit = calculateOne(xyd.BUFF_UNCRIT),
			critTime = calculateOne(xyd.BUFF_CRIT_TIME),
			sklP = calculateOne(xyd.BUFF_SKL_P),
			decDmg = calculateOne(xyd.BUFF_DEC_DMG),
			free = calculateOne(xyd.BUFF_FREE),
			unfree = calculateOne(xyd.BUFF_UNFREE),
			trueAtk = calculateOne(xyd.BUFF_TRUE_ATK),
			brk = calculateOne(xyd.BUFF_BRK),
			energy = calculateOne(xyd.BUFF_ENERGY),
			avoidHurt = calculateOne(xyd.BUFF_AVOID_HURT),
			healI = calculateOne(nil, xyd.BUFF_HEAL_I),
			healB = calculateOne(nil, xyd.BUFF_HEAL_B),
			allHarmDec = calculateOne(xyd.BUFF_ALL_HARM_DEC),
			zs = calculateOne(nil, "zs"),
			fs = calculateOne(nil, "fs"),
			ms = calculateOne(nil, "ms"),
			ck = calculateOne(nil, "ck"),
			yx = calculateOne(nil, "yx"),
			resist_zs = calculateOne(nil, "resist_zs"),
			resist_fs = calculateOne(nil, "resist_fs"),
			resist_ms = calculateOne(nil, "resist_ms"),
			resist_ck = calculateOne(nil, "resist_ck"),
			resist_yx = calculateOne(nil, "resist_yx"),
			allDmgRate = calculateOne(xyd.BUFF_ALL_DMG_RATE),
			critTimeLimit = calculateOne(xyd.BUFF_CRIT_TIME_LIMIT),
			power = power
		}

		self:excuteShrine(hero, attribs)

		if power == nil then
			attribs.power = attribs.atk + attribs.arm + math.floor(attribs.hp / 6) + attribs.hit + attribs.miss + attribs.crit + attribs.critTime + attribs.sklP + attribs.decDmg * 2 + attribs.trueAtk * 2 + otherPower
		end

		if hero:isMonster() then
			local monTableID = hero:getTableID()
			local isPlayerUse = xyd.tables.monsterTable:getValByKey(monTableID, "is_player_use") == 1
			local hpRate = 1 + grade * 0.2
			local atkRate = 1 + grade * 0.2
			local realHp = xyd.tables.monsterTable:getValByKey(monTableID, "hp")
			local realAtk = xyd.tables.monsterTable:getValByKey(monTableID, "atk")

			if isPlayerUse then
				hpRate = 1
				atkRate = 1
			end

			attribs = {
				hp = xyd.checkCondition(realHp and realHp > 0, realHp, attribs.hp * xyd.tables.monsterTable:getValByKey(monTableID, "hpP") / hpRate),
				atk = xyd.checkCondition(realAtk and realAtk > 0, realAtk, attribs.atk * xyd.tables.monsterTable:getValByKey(monTableID, "atkP") / atkRate),
				arm = attribs.arm * xyd.tables.monsterTable:getValByKey(monTableID, "armP"),
				spd = attribs.spd * xyd.tables.monsterTable:getValByKey(monTableID, "spdP"),
				hit = attribs.hit + xyd.tables.monsterTable:getValByKey(monTableID, "hit"),
				miss = attribs.miss + xyd.tables.monsterTable:getValByKey(monTableID, "miss"),
				crit = attribs.crit + xyd.tables.monsterTable:getValByKey(monTableID, "crit"),
				unCrit = attribs.unCrit,
				critTime = attribs.critTime + xyd.tables.monsterTable:getValByKey(monTableID, "critTime"),
				sklP = attribs.sklP + xyd.tables.monsterTable:getValByKey(monTableID, "sklP"),
				decDmg = attribs.decDmg + xyd.tables.monsterTable:getValByKey(monTableID, "decDmg"),
				free = attribs.free + xyd.tables.monsterTable:getValByKey(monTableID, "free"),
				trueAtk = attribs.trueAtk + xyd.tables.monsterTable:getValByKey(monTableID, "trueAtk"),
				brk = attribs.brk + xyd.tables.monsterTable:getValByKey(monTableID, "brk"),
				energy = attribs.energy + xyd.tables.monsterTable:getValByKey(monTableID, "energy_ex"),
				avoidHurt = attribs.avoidHurt,
				healI = attribs.healI,
				healB = attribs.healB,
				allHarmDec = attribs.allHarmDec,
				zs = calculateOne(nil, "zs"),
				fs = calculateOne(nil, "fs"),
				ms = calculateOne(nil, "ms"),
				ck = calculateOne(nil, "ck"),
				yx = calculateOne(nil, "yx"),
				resist_zs = calculateOne(nil, "resist_zs"),
				resist_fs = calculateOne(nil, "resist_fs"),
				resist_ms = calculateOne(nil, "resist_ms"),
				resist_ck = calculateOne(nil, "resist_ck"),
				resist_yx = calculateOne(nil, "resist_yx"),
				allDmgRate = attribs.allDmgRate,
				critTimeLimit = attribs.critTimeLimit,
				power = attribs.power
			}

			self:excuteShrine(hero, attribs)

			if isPlayerUse then
				attribs.power = attribs.atk + attribs.arm + math.floor(attribs.hp / 6) + attribs.hit + attribs.miss + attribs.crit + attribs.critTime + attribs.sklP + attribs.decDmg * 2 + attribs.trueAtk * 2 + otherPower
				attribs.power = math.floor(attribs.power)
			end
		end

		return attribs
	end

	local attribs = calculate()
	local refresh = false
	local pasSkills = hero:getPasSkill()

	for i = 1, #pasSkills do
		local pasTier = self.heroTable:getPasTier(tableID, i)
		local pasSkill = pasSkills[i]

		if pasSkill > 0 and self.skillTable:isHasKey(pasSkill) and self.skillTable:isAttrPas(pasSkill) then
			local effects = self.skillTable:getEffects(pasSkill)

			for j in ipairs(effects) do
				local effect = effects[j]

				for k in ipairs(effect) do
					local id = effect[k]
					local buff = self.effectTable:getType(id)
					local num = self.effectTable:getNum(id)

					if buff and num then
						addAttr(buff, num)
					end
				end
			end

			refresh = true
		end
	end

	if equips then
		local suits = {}

		for i in ipairs(equips) do
			local id = equips[i]

			if self.equipTable:isHasKey(id) then
				local power = self.equipTable:getPower(id)

				if power and power > 0 then
					for j = 1, 4 do
						local attr = self.equipTable:getBase(id, j)

						if #attr > 0 then
							addAttr(attr[1], attr[2])

							refresh = true
						end
					end

					if self.equipTable:getGroup(id) == group or self.equipTable:getJob(id) == job then
						local acts = self.equipTable:getAct(id)

						for _, act in ipairs(acts) do
							addAttr(act[1], act[2])

							refresh = true
						end
					end
				end
			end
		end
	end

	if hero.__cname == "ReportHero" then
		local petInfo = hero:getPetInfo()
		local petEffects = petInfo.petEffects
		local petPasSkills = petInfo.petPasSkills

		if petEffects and next(petEffects) then
			for _, attr in pairs(petEffects) do
				addAttr(attr[1], tonumber(attr[2]))
			end

			refresh = true
		end

		if petPasSkills and next(petPasSkills) then
			for i = 1, #petPasSkills do
				local pasSkill = tonumber(petPasSkills[i])

				if pasSkill and pasSkill > 0 and self.skillTable:isAttrPas(pasSkill) then
					for _, effect in ipairs(self.skillTable:getEffects(pasSkill)) do
						for _, e in ipairs(effect) do
							local buff = self.effectTable:getType(e)
							local num = self.effectTable:getNum(e)

							if buff and num then
								addAttr(buff, num)
							end
						end
					end
				end
			end

			refresh = true
		end
	end

	if refresh then
		attribs = calculate(attribs.power)
	end

	return attribs
end

function HeroAttr:excuteShrine(hero, attribs)
	if hero.shrineData then
		for k, v in pairs(hero.shrineData) do
			local preKey = string.sub(k, 1, -2)

			if attribs[preKey] then
				attribs[preKey] = attribs[preKey] * v
			elseif attribs[k] then
				attribs[k] = attribs[k] + v
			elseif not attribs[k] then
				attribs[k] = v
			end
		end
	end

	if hero.galaxyData then
		for k, v in pairs(hero.galaxyData) do
			local preKey = string.sub(k, 1, -2)

			if attribs[preKey] then
				attribs[preKey] = attribs[preKey] * v
			elseif attribs[k] then
				attribs[k] = attribs[k] + v
			elseif not attribs[k] then
				attribs[k] = v
			end
		end
	end
end

function HeroAttr:getChimeAttr(hero, chimeInfo)
	local chimeTable = xyd.tables.chimeTable
	local result = {}

	for k, v in pairs(chimeInfo) do
		if v.lev and v.lev >= 0 then
			local baseArrs = chimeTable:getBase(v.chime_id)
			local buffP = {}
			local heroGroupP = 0

			for _, arr in ipairs(v.buffs) do
				if arr and arr == 1 then
					local buffs = chimeTable:getBuff(v.chime_id, _)

					for j, buff in ipairs(buffs) do
						local buffArr = xyd.split(buff[1], "P")

						if #buffArr == 2 and buffArr[2] == "" and buff[1] ~= "sklP" then
							if not buffP[buff[1]] then
								buffP[buff[1]] = 0
							end

							buffP[buff[1]] = buffP[buff[1]] + tonumber(buff[2])
						elseif hero and buff[1] == "chimeGroup" .. hero:getGroup() then
							heroGroupP = heroGroupP + tonumber(buff[2])
						else
							if not result[buff[1]] then
								result[buff[1]] = 0
							end

							result[buff[1]] = result[buff[1]] + tonumber(buff[2])
						end
					end
				end
			end

			for _, arr in ipairs(baseArrs) do
				if not result[arr[1]] then
					result[arr[1]] = 0
				end

				local pValue = 1

				if buffP[arr[1] .. "P"] then
					pValue = buffP[arr[1] .. "P"] + 1
				end

				result[arr[1]] = result[arr[1]] + math.floor((arr[2] * (v.lev + 1) + arr[3] * v.lev * (v.lev + 1) / 2 + arr[2] * math.floor(v.lev / 10)) * pValue) + math.floor((arr[2] * (v.lev + 1) + arr[3] * v.lev * (v.lev + 1) / 2 + arr[2] * math.floor(v.lev / 10)) * pValue * heroGroupP)
			end
		end
	end

	return result
end

function HeroAttr:getStarOrigin(hero, fullStarOrigin)
	local result = {}
	local tableID = hero:getTableID()

	if hero:isMonster() then
		return result
	end

	local levs = hero:getStarOrigin()
	local starListId = self.heroTable:getStarOrigin(tableID)
	local startIDs = self.starOriginListTable:getStarIDs(starListId)

	if fullStarOrigin and not hero.isReportHero then
		local endIDs = xyd.tables.starOriginListTable:getEndIDs(starListId)

		for i = 1, #startIDs do
			levs[i] = endIDs[i] - startIDs[i]
		end
	end

	for k, v in pairs(levs) do
		if tonumber(v) and v >= 0 and startIDs[k] then
			local levId = startIDs[k] + v
			local baseArrs = self.starOriginTable:getEffect(levId)
			local buffP = {}

			for _, arr in ipairs(baseArrs) do
				if not result[arr[1]] then
					result[arr[1]] = 0
				end

				result[arr[1]] = result[arr[1]] + arr[2]
			end
		end
	end

	return result
end

function HeroAttr:getSkinEffect(hero, lev)
	local result = {}
	local tableID = hero:getTableID()

	if hero:isMonster() then
		return result
	end

	local baseArrs = self.collectionSkinEffectTable:getEffect(lev)

	for _, arr in ipairs(baseArrs) do
		if not result[arr[1]] then
			result[arr[1]] = 0
		end

		result[arr[1]] = result[arr[1]] + arr[2]
	end

	return result
end

function HeroAttr:getSouls(souls)
	local result = {}

	if not souls then
		return result
	end

	local function addAttr(name, value)
		if result[name] then
			result[name] = result[name] + value
		else
			result[name] = value
		end
	end

	if souls[1] and souls[1].table_id then
		local bases = self.soulEquip1Table:getBase(souls[1].table_id)
		local grows = self.soulEquip1Table:getGrow(souls[1].table_id)
		local star = self.soulEquip1Table:getStarGrow(souls[1].table_id)[souls[1].awake + 1]

		for i = 1, #bases do
			local value = (bases[i][2] + grows[i][2] * souls[1].lv) * star

			addAttr(bases[i][1], value)
		end

		for k, v in ipairs(souls[1].attrs) do
			if tonumber(v) > 0 then
				local value = self.soulEquip1ExBuffTable:getBase(tonumber(v)) + self.soulEquip1ExBuffTable:getGrow(tonumber(v)) * souls[1].lv

				addAttr(self.soulEquip1ExBuffTable:getBuff(tonumber(v)), value)
			end
		end
	end

	for i = 2, 5 do
		local soul = souls[i]

		if soul and soul.table_id then
			local star = self.soulEquip2BaseBuffTable:getStarGrow(soul.main)[self.soulEquip2Table:getStar(soul.table_id)]
			local qlt = self.soulEquip2BaseBuffTable:getQltGrow(soul.main)[soul.awake + 1]
			local mainValue = (self.soulEquip2BaseBuffTable:getBase(soul.main) + self.soulEquip2BaseBuffTable:getGrow(soul.main) * soul.lv) * star * qlt

			addAttr(self.soulEquip2BaseBuffTable:getBuff(soul.main), mainValue)

			local attrs = {}

			for k, v in ipairs(soul.attrs) do
				table.insert(attrs, v)
			end

			for k, v in ipairs(soul.ex_attrs) do
				table.insert(attrs, v)
			end

			for k, v in ipairs(attrs) do
				local attrArr = xyd.splitToNumber(v, "#")
				local base = self.soulEquip2ExBuffTable:getBase(attrArr[1])
				local star = self.soulEquip2ExBuffTable:getStarGrow(attrArr[1])[self.soulEquip2Table:getStar(soul.table_id)]
				local qlt = self.soulEquip2ExBuffTable:getQltGrow(attrArr[1])[soul.awake + 1]
				local value = base * attrArr[2] * star * qlt

				addAttr(self.soulEquip2ExBuffTable:getBuff(attrArr[1]), value)
			end
		end
	end

	if result.atk and result.atkP then
		result.atk = result.atk * (1 + result.atkP)
		result.atkP = nil
	end

	if result.hp and result.hpP then
		result.hp = result.hp * (1 + result.hpP)
		result.hpP = nil
	end

	return result
end

return HeroAttr
