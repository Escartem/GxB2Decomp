﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/de_de/activity_treasure_event_text_de_de.lua

local table = {}

table.keys = {
	id = 1,
	name = 3,
	des = 4,
	sort = 2
}
table.rows = {
	["1"] = {
		1,
		2,
		"Verdoppelte Belohnungen",
		"Du erhältst die doppelte Menge an Belohnungen."
	},
	["2"] = {
		2,
		3,
		"Verdoppelte Wahrscheinlichkeit",
		"Die Steigerung der Wahrscheinlichkeit fürs Erscheinen des Schatzes verdoppelt sich."
	},
	["3"] = {
		3,
		1,
		"Schatz gefunden",
		"Du erhältst direkt den aktuellen Schatz und startest die nächste Runde. (Die Wahrscheinlichkeit fürs Erscheinen des Schatzes wird wieder auf 0 zurückgesetzt.)"
	},
	["4"] = {
		4,
		6,
		"Schere, Stein, Papier",
		"Entscheide dich, ob du \"Schere, Stein, Papier\" spielen willst oder nicht. Spielst du nicht, erhältst du direkt die normalen Belohnungen. Spielst du, erhältst du bei einem Sieg eine zusätzliche normale Ressourcen-Auswahlbox. Bei Unentschieden erhältst du deine normalen Belohnungen. Verlierst du, verlierst du auch deine Belohnungen für die aktuelle Runde."
	},
	["5"] = {
		5,
		4,
		"Belohnungen UP",
		"Bei dieser Erkundung und für einige Erkundungen danach erhöhen sich die Belohnungen aus normalen Schatzkisten. (Details findest du in den Regeln.)"
	},
	["6"] = {
		6,
		5,
		"Nichts passiert",
		"Kein besonderes Ereignis tritt ein und du erhältst die normalen Belohnungen."
	}
}

return table
