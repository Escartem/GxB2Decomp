﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/de_de/show_window_slot_unlock_text_de_de.lua

local table = {}

table.keys = {
	id = 1,
	desc2 = 4,
	desc1 = 3,
	unlock_type = 2
}
table.rows = {
	["1"] = {
		1,
		1,
		"Der Slot wird entsperrt, sobald Mut {2} erreicht. ({1}/{2})",
		"Bedingung zum Entsperren des Slots erfüllt (Mut erreicht {1}/{2}). Fortfahren?"
	},
	["2"] = {
		2,
		2,
		"Der Slot wird entsperrt, sobald Charme {2} erreicht. ({1}/{2})",
		"Bedingung zum Entsperren des Slots erfüllt (Charme erreicht {1}/{2}). Fortfahren?"
	},
	["3"] = {
		3,
		3,
		"Der Slot wird entsperrt, sobald Wissen {2} erreicht. ({1}/{2})",
		"Bedingung zum Entsperren des Slots erfüllt (Wissen erreicht {1}/{2}). Fortfahren?"
	},
	["4"] = {
		4,
		4,
		"Der Slot wird entsperrt, sobald Stufe {2} beim Test bestanden wurde. ({1}/{2})",
		"Bedingung zum Entsperren des Slots erfüllt (Stufe {1}/{2} beim Test wurde bestanden). Fortfahren?"
	},
	["5"] = {
		5,
		5,
		"Der Slot wird entsperrt, sobald Stockwerk {2} der Schwierigkeitsstufe \"{1}\" in der Patrouille bestanden wurde.",
		"Bedingung zum Entsperren des Slots erfüllt (Stockwerk {2} der Schwierigkeitsstufe \"{1}\" in der Patrouille wurde bestanden). Fortfahren?"
	},
	["6"] = {
		6,
		6,
		"Der Slot wird entsperrt, sobald dein Team beim Sicherheitstrupp Lv.{2} erreicht. ({1}/{2})",
		"Bedingung zum Entsperren des Slots erfüllt (Level vom Sicherheitstrupp erreicht {1}/{2}). Fortfahren?"
	},
	["7"] = {
		7,
		7,
		"Der Slot wird entsperrt, sobald deine Punkte in einer Saison bei der Prüfung {2} erreicht haben. ({1}/{2})",
		"Bedingung zum Entsperren des Slots erfüllt (Punkte unter Prüfung {1}/{2}). Fortfahren?"
	}
}

return table
