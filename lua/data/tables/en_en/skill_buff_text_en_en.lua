﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/en_en/skill_buff_text_en_en.lua

local table = {}

table.keys = {
	buff_id = 2,
	name = 4,
	sec = 5,
	plus_minus = 3,
	id = 1
}
table.rows = {
	["1"] = {
		1,
		"atk|atkP|siphonAtk|vanity",
		1,
		"Attack Buff",
		"Increases a Girl's Attack."
	},
	["2"] = {
		2,
		"hp|hpP|addHpLimit",
		1,
		"HP Buff",
		"Increases a Girl's HP."
	},
	["3"] = {
		3,
		"arm|armP|siphonArm",
		1,
		"Armor Buff",
		"Increases a Girl's Armor."
	},
	["4"] = {
		4,
		"spd|spdSteal",
		1,
		"Speed Boost",
		"Increases a Girl's Speed."
	},
	["5"] = {
		5,
		"sklP",
		1,
		"Skill Damage Boost",
		"Increases a Girl's Skill Damage."
	},
	["6"] = {
		6,
		"hit",
		1,
		"Precision Boost",
		"Increases a Girl's Precision."
	},
	["7"] = {
		7,
		"miss|missLimit2",
		1,
		"Block Boost",
		"Increases a Girl's Block."
	},
	["8"] = {
		8,
		"crit",
		1,
		"Crit Chance Buff",
		"Increases a Girl's Crit."
	},
	["9"] = {
		9,
		"critTime|critTimeBlood",
		1,
		"Crit Damage Buff",
		"Increases a Girl's Crit Damage."
	},
	["10"] = {
		10,
		"brk",
		1,
		"Armor Break Buff",
		"Increases a Girl's Armor Break."
	},
	["11"] = {
		11,
		"free",
		1,
		"Control Immunity Boost",
		"Increases a Girl's Control Immunity."
	},
	["12"] = {
		12,
		"trueAtk",
		1,
		"Holy Damage Buff",
		"Increases a Girl's Holy Damage."
	},
	["13"] = {
		13,
		"decDmg|decDmgBlood|decDmgNadd|allHarmDec",
		1,
		"Damage Reduction Buff",
		"Increases a Girl's Damage Reduction."
	},
	["14"] = {
		14,
		"healB",
		1,
		"Heal Received Boost",
		"Increases a Girl's Heal Received."
	},
	["15"] = {
		15,
		"healI",
		1,
		"Heal Amount Boost",
		"Increases a Girl's Heal Amount."
	},
	["16"] = {
		16,
		"atk|atkP|siphonAtk|vanity",
		2,
		"Attack Debuff",
		"Reduces a Girl's Attack."
	},
	["17"] = {
		17,
		"hp|hpP",
		2,
		"HP Debuff",
		"Reduces a Girl's HP."
	},
	["18"] = {
		18,
		"arm|armP|siphonArm",
		2,
		"Armor Debuff",
		"Reduces a Girl's Armor."
	},
	["19"] = {
		19,
		"spd|spdSteal",
		2,
		"Speed Debuff",
		"Reduces a Girl's Speed."
	},
	["20"] = {
		20,
		"sklP",
		2,
		"Skill Damage Debuff",
		"Reduces a Girl's Skill Damage."
	},
	["21"] = {
		21,
		"hit",
		2,
		"Precision Debuff",
		"Reduces a Girl's Precision."
	},
	["22"] = {
		22,
		"miss|missLimit2",
		2,
		"Block Debuff",
		"Reduces a Girl's Block."
	},
	["23"] = {
		23,
		"crit",
		2,
		"Crit Chance Debuff",
		"Reduces a Girl's Crit."
	},
	["24"] = {
		24,
		"critTime|critTimeBlood",
		2,
		"Crit Damage Debuff",
		"Reduces a Girl's Crit Damage."
	},
	["25"] = {
		25,
		"brk",
		2,
		"Armor Break Debuff",
		"Reduces a Girl's Armor Break."
	},
	["26"] = {
		26,
		"free",
		2,
		"Control Immunity Debuff",
		"Reduces a Girl's Control Immunity."
	},
	["27"] = {
		27,
		"trueAtk",
		2,
		"Holy Damage Debuff",
		"Reduces a Girl's Holy Damage."
	},
	["28"] = {
		28,
		"decDmg|decDmgBlood|decDmgNadd",
		2,
		"Damage Reduction Debuff",
		"Reduces a Girl's Damage Reduction."
	},
	["29"] = {
		29,
		"healB",
		2,
		"Heal Received Debuff",
		"Reduces a Girl's Heal Received."
	},
	["30"] = {
		30,
		"healI",
		2,
		"Heal Amount Debuff",
		"Reduces a Girl's Heal Amount."
	},
	["31"] = {
		31,
		"weak",
		"",
		"Weaken Mark",
		"A Mark Effect. Girls with \"Weaken\" status will take extra damage. This status cannot be stacked."
	},
	["32"] = {
		32,
		"stun",
		"",
		"Stun",
		"A Control Effect. During this effect, girls affected will not be able to deal Basic Attack, release their Active Skills, Hunt or Counterattack."
	},
	["33"] = {
		33,
		"ice",
		"",
		"Freeze",
		"A Control Effect. During this effect, girls affected will not be able to deal Basic Attack, release their Active Skills, Hunt or Counterattack."
	},
	["34"] = {
		34,
		"stone",
		"",
		"Petrify",
		"A Control Effect. During this effect, girls affected will not be able to deal Basic Attack, release their Active Skills, Hunt or Counterattack."
	},
	["35"] = {
		35,
		"forbid",
		"",
		"Silence",
		"A Control Effect. During this effect, girls affected will not be able to release their Active Skills."
	},
	["36"] = {
		36,
		"hot|healP",
		"",
		"HP Regeneration",
		"Girls with \"HP Regeneration\" effects will regenerate her HP at the beginning of a round."
	},
	["37"] = {
		37,
		"dotPoison",
		"",
		"Poison",
		"A Damage Over Time effect. Damage is dealt once when poison is inflicted and during the period of effect, damage will be dealt at the beginning of each round."
	},
	["38"] = {
		38,
		"dotBlood",
		"",
		"Bleed",
		"A Damage Over Time effect. Damage is dealt once when bleed is inflicted and during the period of effect, damage will be dealt at the beginning of each round."
	},
	["39"] = {
		39,
		"dotFire",
		"",
		"Burn",
		"A Damage Over Time effect. Damage is dealt once when burn is inflicted and during the period of effect, damage will be dealt at the beginning of each round."
	},
	["40"] = {
		40,
		"rImpress",
		"",
		"Round Mark",
		"A Mark Effect. The Round Mark will be removed 1 round after it is applied and deal damage at the same time. This effect can stack."
	},
	["41"] = {
		41,
		"cImpress",
		"",
		"Critical Strike Mark",
		"A Mark Effect. The Critical Strike Mark will be removed and deal damage if the owner takes crit damage. This effect can stack."
	},
	["42"] = {
		42,
		"fImpress",
		"",
		"Yinyang Mark",
		"A Mark Effect. Girls tagged with the Yinyang Mark takes more damage from Priestess. This effect can stack."
	},
	["43"] = {
		43,
		"oImpress",
		"",
		"Hornet Mark",
		"A Mark Effect. Girls tagged with the Hornet Mark takes more damage. Can be stacked up to 300% extra damage."
	},
	["44"] = {
		44,
		"dotTwins",
		"",
		"Bringers of Fate",
		"Girls targeted with this effect will take damage when this effect is applied, and at the start of the next round."
	},
	["45"] = {
		45,
		"aggression",
		"",
		"Pursue",
		"A Skill effect. When a Girl who has stacks of Pursue triggers her Active Skill, all stacks of Pursue will be consumed. Each stack of Pursue deals damage against the enemy with the lowest HP and Bleeds them."
	},
	["47"] = {
		47,
		"frighten",
		"",
		"Terrorize",
		"A Control Effect. During this effect, girls affected will not be able to perform Basic Attacks."
	},
	["48"] = {
		48,
		"decDmgShieldLimit5",
		"",
		"Shield of Darkness",
		"A Skill Effect. Provides Control Immunity and Damage Reduction to the owner. This effect can be stacked up to 5 stacks."
	},
	["49"] = {
		49,
		"balanceImpressLimit30",
		"",
		"Equilibrium Mark",
		"A Mark Effect. Girls take damage based on their Maximum HP when using their Active Skills. Damage taken will not surpass 3000% of Nephilim's Attack. This effect cannot stack."
	},
	["50"] = {
		50,
		"tearLimit2",
		"",
		"Disintegration",
		"A Mark Effect. Reduces the owner's Block and increases damage taken from Damage Over Time Effects."
	},
	["51"] = {
		51,
		"getImmenu",
		"",
		"Disrespect",
		"A Skill Effect. When Rogue is afflicted by a Control Effect, allows her to remove 1 stack of Disrespect to negate it."
	},
	["52"] = {
		52,
		"getReflect",
		"",
		"Dauntless",
		"A Mark Effect. Rogue removes 1 stack of Dauntless to reduce and reflect a part of damage taken from Active Skills and Basic Attacks aimed at her."
	},
	["53"] = {
		53,
		"moonShadow",
		"",
		"Moonlight Shadow",
		"A Skill Effect. When allies are hit with Active Skills or Basic Attacks, has a chance to cleanse 2 debuffs from the attacked ally. This effect can only be triggered for a limited number of times per round. At the end of each round, heals the ally with the lowest HP. Effect discontinues if the caster of this effect is defeated."
	},
	["54"] = {
		54,
		"starMoon",
		"",
		"Galaxy",
		"A Skill Effect. When Vivian takes damage or Debuff, the enemy Vivian tags Galaxy on will also take some of the damage and have a chance to take the same Debuff."
	},
	["55"] = {
		55,
		"fragranceGet",
		"",
		"Remnant",
		"A Skill Effect. The owner can gain additional Damage Reduction from each stack of Remnant she has."
	},
	["56"] = {
		56,
		"getAbsorbShield",
		"",
		"Lily Shield",
		"This buff effect neutralizes damage of next Basic Attack or Active Skill Damage received and transforms the neutralized damage into healing (damage dealt by Servants, Passive skill and Marks not included)."
	},
	["57"] = {
		57,
		"getHealCurse",
		"",
		"Healing Curse",
		"A Skill Effect. Converts the next Healing effect the target receives into Damage (The healing dealt by Servants will not be affected by Healing Curse)."
	},
	["59"] = {
		59,
		"getLeaf",
		"",
		"Diminish",
		"A Skill Effect. The owner of this effect takes more damage and deals less damage. When the owner deals a Basic Attack or releases an Active Skill, takes damage based on their Maximum HP. This effect cannot stack."
	},
	["60"] = {
		60,
		"getThorns",
		"",
		"Lullaby",
		"A Skill Effect. The owner of this effect will be able to deal damage that ignores armor to the attacker and heal herself (based on the owner's Attack) when taking damage from an Active Skill or Basic Attack."
	},
	["62"] = {
		62,
		"apateRevive",
		"",
		"Volos",
		"A Skill Effect. The owner of this effect deals damage based on the amount of HP the target has lost on the enemy with the lowest HP."
	},
	["63"] = {
		63,
		"ReduceSpd",
		"",
		"Anoxia",
		"A Mark Effect. Every stack of this effect reduces the owner's Speed. This effect can stacked up to 5 stacks."
	},
	["64"] = {
		64,
		"absorbDamage",
		"",
		"Wind Shield",
		"A Skill Effect. Reduces all damage taken by the owner of this effect. This effect can only trigger once."
	},
	["65"] = {
		65,
		"xifengSpd",
		"",
		"Wind Rush",
		"A Skill Effect. Increases Speed of the owner of this effect in battle until Skye is defeated."
	},
	["67"] = {
		67,
		"ridicule",
		"",
		"Taunt",
		"A Control Effect. The owner of this effect will compulsively target the caster of this effect when releasing their Active Skill, when dealing a Basic Attack, or when triggering a Passive Skill that affects the enemies."
	},
	["68"] = {
		68,
		"outBreak",
		"",
		"Berserk",
		"A Skill Effect. Active Skills and Basic Attacks dealt by the owner of this effect will be Critical Strikes and cannot be blocked."
	},
	["69"] = {
		69,
		"atkImpressBonus",
		"",
		"Hunter's Mark",
		"A Mark Effect. When the caster of this effect attacks the owner of this effect, each Hunter's Mark stacked will increase Attack Damage and Crit Damage dealt. If the owner of this effect is defeated, the Girl with the highest Attack attribute in the owner's team will take damage from Von Helsing."
	},
	["70"] = {
		70,
		"suckRealBloodGet",
		"",
		"Blood Thirst",
		"A Skill Effect. When the owner of this effect releases her Active Skill, all stacks will be released, dealing damage to the target of the Active Skill and healing the owner of this effect for the equivalent amount of HP as damage dealt."
	},
	["71"] = {
		71,
		"trueVampire",
		"",
		"Feast Mode",
		"A Skill Effect. The owner of this effect gains extra Crit, Control Immunity, Precision, and becomes immune to Bleed."
	},
	["72"] = {
		72,
		"sameAtk",
		"",
		"Moon Dust",
		"A Skill Effect. When the caster of this effect deals a Basic Attack or releases an Active Skill, she will additionally deal the same attack once to the owner of this effect and heal herself based on the damage dealt."
	},
	["73"] = {
		73,
		"mistletoe",
		"",
		"Parasite",
		"A Skill Effect. Reduces Attack and Heal Received of the enemies inflicted with Parasite. This effect can be stacked up to 3 stacks."
	},
	["74"] = {
		74,
		"teleishaRecoverCost",
		"",
		"Righteous Might",
		"A Skill Effect. Used to trigger Teresa's Passive skill: \"Righteous Protection\"."
	},
	["75"] = {
		75,
		"sunArrow",
		"",
		"Sun Slayer",
		"A Skill Effect. Angelica will Hunt the enemy with the lowest HP percentage the same number of times as the stacks of Sun Slayer that she has when she triggers Active Skills and Basic Attacks."
	},
	["76"] = {
		76,
		"feisinaExplode",
		"",
		"Dark Star Mark",
		"A Mark Effect. Detonates at the end of the round dealing damage according to the damage the mark carrier takes from Active Skills and Basic Attacks in the round. If the target is already tagged with a Dark Star Mark when a second one is tagged, deals damage according to the target's maximum HP."
	},
	["77"] = {
		77,
		"feisinaWeak",
		"",
		"Blood Prison",
		"A Skill Effect. Reduces the owner's Armor, Damage Reduction, Damage Depletion, Block and chance to Dodge, cannot be stacked."
	},
	["78"] = {
		78,
		"feisinaMiss",
		"",
		"Blood Ring",
		"A Skill Effect. Increases the owner's chance of Dodging enemies' Active Skills and Basic Attacks."
	},
	["79"] = {
		79,
		"kaixiHurtDmg",
		"",
		"Cat Eyes",
		"A Skill Effect. When the owner of this effect releases an Active Skill or deals a Basic Attack, deals extra damage based on the target's total lost HP and heals the owner based on total damage dealt by the owner."
	},
	["80"] = {
		80,
		"mistletoeNew",
		"",
		"Parasite",
		"A Skill Effect. Reduces Attack and Heal Received of the owner of this effect. This effect can be stacked up to 3 stacks."
	},
	["81"] = {
		81,
		"naturalLaw",
		"",
		"Natural Order",
		"A Skill Effect. When enemies release their Active Skills, deals a Basic Attack, or trigger Passive Skills that affect random enemies, they will target the owner of this effect first. When the owner of this effect takes damage from any source, if the attacker is afflicted with Parasite, she will be healed for a percentage of her Maximum HP."
	},
	["82"] = {
		82,
		"futureObserve",
		"",
		"Future Observation",
		"A Skill Effect. Consumed to trigger Monica's passive skill \"Rewind\"."
	},
	["83"] = {
		83,
		"fateWheel",
		"",
		"Wheel of Fate",
		"A Skill Effect. Resets the trigger limit of \"Rewind\" of the owner of this effect, grants the owner Attack and Extra Control Rate boosts, and heals the owner when the caster of this effect is healed."
	},
	["84"] = {
		84,
		"timeRule",
		"",
		"Laws of Time",
		"A Skill Effect. Reduces the owner's Heal Received and Control Immunity."
	},
	["85"] = {
		85,
		"magicShoot",
		"",
		"Grievous Wound",
		"A Skill Effect. Reduce the owner's Heal Received and Damage Depletion."
	},
	["86"] = {
		86,
		"dianaDie",
		"",
		"Nightmare",
		"A Skill Effect. Deals damage to the owner at the end of each Round. When the owner is defeated, deals damage to all enemies."
	},
	["87"] = {
		87,
		"lubanHurtB",
		"",
		"Aether Leakage",
		"A Skill Effect. Increases direct damage taken by the owner of this effect."
	},
	["88"] = {
		88,
		"lubanHurtC",
		"",
		"Aether Exhaustion",
		"A Skill Effect. Increases direct damage taken and reduces Heal Received of the owner of this effect."
	},
	["89"] = {
		89,
		"deathSpd",
		"",
		"Premonition",
		"A Skill Effect. Reduce the target's Speed."
	},
	["90"] = {
		90,
		"luobiMark",
		"",
		"Laser Charge",
		"A Skill Effect. Each stack grants Energy Removal Resist and can be stacked up to 5 stacks. When releasing her Active Skill, the owner of this effect will release all stacks of Laser Charge, and deal the same attack as the Active Skill and afflict the same effects once to 1 random Backline enemy for each stack."
	},
	["91"] = {
		91,
		"kawenMark",
		"",
		"Gilded Butterflies",
		"A Skill Effect. Increases the chance for the owner of this effect to take Critical Strikes from the caster of this effect and Crit Damage of Critical Strikes dealt by the caster. When the caster is attacked by the owner, her Frontline allies will help take some damage for her and split damage taken between themselves."
	},
	["92"] = {
		92,
		"mayaBuffResist",
		"",
		"Malediction",
		"A Mark Effect. This Mark will be triggered when the owner of the Mark gains an Attribute Increase Buff. Every stack of Malediction will remove 1 stack of Attribute Increase Buff and deal damage based on the caster's Attack to the owner, and the stacks will be removed after being triggered."
	},
	["93"] = {
		93,
		"mayaHpLoseSeal",
		"",
		"Chaos Scar",
		"A Skill Effect. Every stack of this effect lowers the Maximum HP and Heal Received of the owner of this effect. Maximum HP lowered by this effect cannot be recovered through healing effects."
	},
	["94"] = {
		94,
		"snowWindMix",
		"",
		"Blessings of Snow",
		"A Skill Effect. Increases the owner's Energy when she is Attacked, as well as her Heal Received and Damage Depletion."
	},
	["95"] = {
		95,
		"hpShield",
		"",
		"Magick Barrier",
		"A Skill Effect. Nullifies all incoming damage for the owner. The Magick Barrier's durability depends on how many Barrier Points (BP) it has: 1 BP nullifies 1 damage. When the Magick Barrier's BP reaches 0, it will shatter and disappear. A Magick Barrier can have up to (100% of owner's maximum HP) BP."
	},
	["96"] = {
		96,
		"degulaDebuff",
		"",
		"Sanguine Snare",
		"A Damage Over Time effect. Girls with \"Sanguine Snare\" will take damage according to their maximum HP at the end of each round. The same amount of damage will also be dealt when the effect is inflicted. When Sanguine Snare deals damage, it will heal the caster of this effect."
	},
	["97"] = {
		97,
		"degulaCount",
		"",
		"Blood Bats",
		"A Skill Effect. Used to boost the damage of Sanguine Snare."
	},
	["98"] = {
		98,
		"hpShieldFromHeal",
		"",
		"Cubic Stronghold",
		"A Skill Effect. Grants additional Magick Barrier according to the healing received."
	},
	["99"] = {
		99,
		"xigemaPower",
		"",
		"Matric Reinforcement",
		"A Skill Effect. Grants the owner additional Control Immunity and Precision."
	},
	["100"] = {
		100,
		"hpShieldRecover",
		"",
		"Zephyr's Blessing",
		"A Skill Effect. At the end of every round, the owner of this effect recovers HP and gains a Magick Barrier with BP equivalent to the amount of HP healed. Reduces the amount of BP lost when the Magick Barrier nullifies damage for the owner."
	},
	["101"] = {
		101,
		"getLight|addGetLight",
		"",
		"Scars of Belinus",
		"A Skill Effect. When a Girl holds 2 stacks of this effect, all stacks of this effect will be removed and triggers Trial of Belinus that lasts for 2 rounds."
	},
	["102"] = {
		102,
		"wulieerSeal",
		"",
		"Trial of Belinus",
		"A Control Effect. During this effect, girls affected will not be able to trigger their Passive Skills. When the owner of this effect loses this effect, they will take damage that doesn't surpass 1500% of the caster's Attack."
	},
	["103"] = {
		103,
		"fullEnergyHurt",
		"",
		"Resonant Mark",
		"A Mark Effect. Triggers when the owner of this mark has 100 or more Energy, deals damage to the owner for every 1 Energy that the owner has, and removes all Energy from the owner. This mark will be removed after it is triggered."
	},
	["104"] = {
		104,
		"qianheziHeal",
		"",
		"Crane's Plume",
		"A Skill Effect. The owner of this effect takes more damage from all sources and has their Attack lowered. When the owner is healed, the Girl that has the lowest HP on the caster's side will recover the same amount of HP as the owner, and the Girl that has the lowest HP on the owner's side will take damage equivalent to the amount of HP healed. This effect can only be triggered up to 10 times per round."
	},
	["105"] = {
		105,
		"qianheziDec",
		"",
		"Luminosity",
		"A Skill Effect. The owner of this effect becomes immune to the next two instances of damage dealt to them. This effect will be removed after the owner takes damage twice. When the owner gains this effect again, this effect will be reset to its default state. The owner gains a Magick Barrier with BP equivalent to the amount of damage this effect nullified when this effect is removed or reset."
	},
	["106"] = {
		106,
		"spzglHitted",
		"",
		"Headwinds",
		"A Mark Effect. This Mark triggers when the owner of this Mark takes damage from Basic Attacks or Active Skills. When triggered, it deals damage to the owner and has a chance to Stun the owner. This Mark disappears after it is triggered."
	},
	["107"] = {
		107,
		"spzglAllHarm",
		"",
		"Tailwinds",
		"A Skill Effect. Increases all damage dealt by the owner of this Effect based on her Attack attribute."
	},
	["108"] = {
		108,
		"dotMaxHp",
		"",
		"Liquid Poison",
		"A Damage Over Time Effect. Deals damage based on the owner's Maximum HP to the owner of this effect when afflicted and at the end of each Round in the duration of this effect. If damage dealt is lower than 50% of the caster's Attack, then this effect will deal damage equivalent to 50% of the caster's Attack."
	},
	["109"] = {
		109,
		"hypoxia",
		"",
		"Suffocate",
		"A Skill Effect. The owner of this Skill Effect will have its Heal Received reduced by 50%, Energy gain reduced by 50%, and take 100% more damage from Damage Over Time effects."
	},
	["110"] = {
		110,
		"xierkediDot",
		"",
		"Miasma",
		"A Skill Effect. Reduces damage dealt by the owner of this Effect to the caster of this Effect, and deals damage to the owner at the end of every round."
	},
	["111"] = {
		111,
		"xierkediPower",
		"",
		"Starburst",
		"A Skill Effect. Increases Attack, Crit, and Precision of the owner of this Effect. The owner of this Effect will Dodge damage and effects of enemies' Attacks and Skills that target random enemies."
	},
	["112"] = {
		112,
		"xingmang",
		"",
		"Star's Whisper",
		"A Skill Effect. Increases Attack, Precision, and Holy Damage of the owner of this Effect."
	},
	["113"] = {
		113,
		"lockTarget",
		"",
		"Locked On",
		"A Skill Effect. Von Helsing’s Basic Attacks and Active Skills will take priority in selecting the Locked on target."
	},
	["114"] = {
		114,
		"yifuMark",
		"",
		"Hounded",
		"A Skill Effect. Used to strengthen Eve’s Active Skill."
	},
	["115"] = {
		115,
		"hpShieldEndToHeal",
		"",
		"Canine Protection",
		"A Skill Effect. When the [c][e28002]Magick Barrier[-][/c] protecting the owner of this Effect disappears, this Effect will be triggered and heal the owner. This Effect will disappear after triggered."
	},
	["116"] = {
		116,
		"qiubiteMark",
		"",
		"Heartbeat",
		"A Skill Effect. The number of stacks of this effect determines how many times she will heal her ally with the highest Attack attribute for multiple times. When it is removed, a [c][e28002]Magick Barrier[-][/c] will be granted."
	},
	["117"] = {
		117,
		"qiubitePower",
		"",
		"Heartfelt",
		"A Skill Effect. When the owner of this Effect receives a healing effect, if the amount of HP healed will cause the owner’s current HP to surpass her maximum HP, the surplus healing will be transformed into the BP of a [c][e28002]Magick Barrier[-][/c]. If the owner is protected by a [c][e28002]Magick Barrier[-][/c], her Attack, Damage Depletion, and the final damage she deals will be increased."
	},
	["118"] = {
		118,
		"plmxsThorns",
		"",
		"Starflare",
		"A Skill Effect. Whenever the owner of this Effect takes damage, damage taken will be reduced, and this effect will reflect a portion of damage taken to the attacker. (Fixed damage that will neither Crit nor be affected by attributes or effects that increase or reduce damage to the target cannot be reduced or reflected)"
	},
	["119"] = {
		119,
		"plmxsDebuff",
		"",
		"Hellfire",
		"A Skill Effect. The owner of this Effect will have their Heal Received and Block reduced, and gain less Energy."
	},
	["120"] = {
		120,
		"freeHarmLeft1",
		"",
		"Chains of Woe",
		"A Mark Effect that cannot stack. When the owner of this Effect takes lethal damage and triggers any effect that prevents them from being defeated by this lethal damage, only 1 HP will remain on them."
	},
	["121"] = {
		121,
		"lianhuaHittedHeal",
		"",
		"Untainted",
		"A Skill Effect. The owner of this Effect recovers HP based on their lost HP and gains Attack when they take damage from Active Skills and Basic Attack of targets afflicted with [c][01a310]Bleed[-][/c]."
	},
	["122"] = {
		122,
		"lianhuaBloodHurt",
		"",
		"Full Bloom",
		"A Skill Effect. The owner of this Effect will take extra damage based on their Maximum HP when [c][01a310]Bleed[-][/c] is inflicted to them."
	},
	["123"] = {
		123,
		"ailisheColor1",
		"",
		"Primal Red",
		"A Skill Effect. The owner of this Effect will have their Speed reduced."
	},
	["124"] = {
		124,
		"ailisheColor2",
		"",
		"Primal Yellow",
		"A Skill Effect. The owner of this Effect will have their Armor reduced."
	},
	["125"] = {
		125,
		"ailisheColor3",
		"",
		"Primal Blue",
		"A Skill Effect. The owner of this Effect will have their Attack reduced."
	},
	["126"] = {
		126,
		"ailisheColor12",
		"",
		"Hybrid Orange",
		"A Skill Effect. Increases all damage taken by the owner of this Effect."
	},
	["127"] = {
		127,
		"ailisheColor13",
		"",
		"Hybrid Purple",
		"A Skill Effect. Reduces Heal Received and Barrier Points granted to the owner of this Effect."
	},
	["128"] = {
		128,
		"ailisheColor23",
		"",
		"Hybrid Green",
		"A Skill Effect. Reduces all damage dealt by the owner of this Effect."
	},
	["129"] = {
		129,
		"ailisheColor123",
		"",
		"Faded",
		"The owner of this effect cannot release Active Skills, deal Basic Attacks, Hunt, or Counterattack, nor can they recover HP, regenerate Energy, replenish Barrier Points, or gain new [c][e28002]Magick Barriers[-][/c]. All damage taken by them will also be increased."
	},
	["130"] = {
		130,
		"ailisheRound3",
		"",
		"Pisces' Gift",
		"A Mark Effect. Increases the owner’s Extra Control Rate by 10% and Crit Damage Mitigation by 20%."
	},
	["131"] = {
		131,
		"longnvDebuff",
		"",
		"Dragon's Curse",
		"A Skill Effect. Reduces the Crit and Block of the owner of this Effect."
	},
	["132"] = {
		132,
		"shareByHurt",
		"",
		"Dragon's Favor",
		"A Skill Effect. The caster of this Effect will take some damage for the owner of this Effect."
	},
	["133"] = {
		133,
		"longnvDead",
		"",
		"Dragon Soul",
		"A Skill Effect. Raenvya's Soul resides within the owner of this Effect."
	},
	["134"] = {
		134,
		"ansunaToShield",
		"",
		"Peacock Feather",
		"A Skill Effect. The owner of this Effect deals less damage to the caster of this Effect. When the owner deals damage to the caster, the caster will absorb and transform a portion of damage dealt into a [c][e28002]Magick Barrier[-][/c] with the equivalent amount of BP."
	},
	["135"] = {
		135,
		"ansunaDot",
		"",
		"Mesmerize",
		"A Damage Over Time Effect. The owner receives more damage from Damage Over Time effects and takes damage both when this Effect is inflicted and at the start of the round."
	},
	["136"] = {
		136,
		"ningshi",
		"",
		"Piercing Gaze",
		"A Skill Effect. Increases damage taken by the owner of this Effect. Deals damage to the owner and reduces her Energy when inflicted and at the end of every Round."
	},
	["137"] = {
		137,
		"shuairuo",
		"",
		"Despair",
		"A Skill Effect. Reduces the owner's Heal Received and amount of BP received."
	},
	["138"] = {
		138,
		"deathLayerMark",
		"",
		"Death's Shadow",
		"A Skill Effect. At 3 stacks, it reduces the Attack of its owner. At 5 stacks, it has a chance to stun its owner at the start of every Round. At 15 stacks, it will cause its owner to be defeated immediately at the end of the Round."
	},
	["139"] = {
		139,
		"shield2",
		"",
		"Carapace",
		"A Skill Effect. Nullifies 1 instance of damage."
	},
	["140"] = {
		140,
		"blind",
		"",
		"Afterimage",
		"A Skill Effect. Reduces the Precision, Block, and Control Immunity of the owner of this Effect. There is also a 75% chance for Basic Attacks and Active Skills dealt by the owner to miss."
	},
	["141"] = {
		141,
		"soulTear",
		"",
		"Alnasl",
		"A Skill Effect. The owner of this Effect takes a portion of damage dealt after dealing a Basic Attack or an Active Skill."
	},
	["142"] = {
		142,
		"soulSeal",
		"",
		"Kaus Australis",
		"A Skill Effect. When the owner of this Effect is healed, they will only be healed for a portion of the healing amount. The rest will be granted when this Effect is removed. When the owner is attacked by Basic Attacks or Active Skills, they will take fixed damage based on their Maximum HP."
	},
	["143"] = {
		143,
		"bosaidongMark",
		"",
		"Gift of the Sea",
		"A Skill Effect. When the owner gains 6 stacks of this Effect, she will consume all stacks and grant Attack and Armor to all allies. The effects will double for the caster."
	},
	["144"] = {
		144,
		"hadisiEnergyGetRate",
		"",
		"Irreversible Death",
		"A Skill Effect. Reduces the Energy gain of the owner of this Effect."
	},
	["145"] = {
		145,
		"hadisiDebuff",
		"",
		"Doom's Arrival",
		"A Skill Effect. Reduces the Heal Received and amount of BP received of the owner of this Effect."
	},
	["146"] = {
		146,
		"zhousiTrueAtk",
		"",
		"Divinity",
		"A Skill Effect. Increases the Holy Damage of the owner of this Effect."
	},
	["147"] = {
		147,
		"zhousiDot",
		"",
		"Thunderbolt",
		"A Skill Effect. Deals damage based on the Maximum HP of the owner of this Effect when inflicted and at the end of the round during the period of effect, reduces the owner's Attack, and has a chance to inflict [c][e28002]Dazed[-][/c] to the owner."
	}
}

return table
