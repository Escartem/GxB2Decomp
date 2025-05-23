﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/en_en/activity_lost_space_event_text_en_en.lua

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
		"Portal",
		"activity_lost_space_icon_xyg_90",
		"You will leave your current Space Zone and enter a new Space Zone by tapping on a portal. You will also obtain the chest reward for the current Space Zone."
	},
	["2"] = {
		2,
		"Supply Stash",
		"activity_lost_space_icon_bjd_90",
		"A supply hideout located in the Space Zones. You will obtain huge rewards for entering a Supply Stash. But you will need enough Supply Coordinates to get enough information about its location."
	},
	["3"] = {
		3,
		"Supply Coordinate",
		"activity_lost_space_icon_bjz_1_90",
		"Records the information of the Supply Stash location. You will locate the Supply Stash after collecting 3 Supply Coordinates."
	},
	["4"] = {
		4,
		"Hologram Machine",
		"activity_lost_space_icon_xj",
		"Valuable records left behind by the predecessors. It will show you the location of a high-value reward in the current Space Zone once triggered. Can only be used in the Space Zone where it is found."
	},
	["5"] = {
		5,
		"Copier",
		"activity_lost_space_icon_double_90",
		"A mysterious device that can replicate an item. Once obtained, the amount of rewards you find in the next move will be doubled. (You can enter the next Space Zone with this effect triggered) (Double chance won't be consumed upon triggering a special event)"
	},
	["6"] = {
		6,
		"Laser Energy",
		"activity_lost_space_icon_nl",
		"The energy required to activate the laser device. The laser device can be used to trigger powerful skills after it receives enough energy."
	}
}

return table
