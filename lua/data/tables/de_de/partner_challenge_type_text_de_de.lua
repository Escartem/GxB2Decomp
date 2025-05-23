﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/de_de/partner_challenge_type_text_de_de.lua

local table = {}

table.keys = {
	id = 1,
	name = 2,
	desc = 3
}
table.rows = {
	["1"] = {
		1,
		"Normal",
		"Du kannst nur die Mädchen der aktuellen Stufe zum Kämpfen verwenden. Wenn du gewinnst erhälst du neue Mädchen und einen besonderen Segen für die folgenden Kämpfe. Der Fortschritt kann jederzeit zurückgesetzt werden."
	},
	["2"] = {
		2,
		"Puzzelmodus",
		"Jedes Mal können nur die voreingestellten Mädchen für den Kampf verwendet werden. Zurücksetzen nicht notwendig."
	},
	["3"] = {
		3,
		"Schachmodus",
		"Verwende die Schach-Tickets um Mädchen zu erhalten und zu aktualisieren. 3 identische Mädchen werden mit einem stärkeren identischen Mädchen ersetzt! Schließe den Kampf ab bevor dein Vernunftswert auf 0 fällt!"
	},
	["4"] = {
		4,
		"Geschwindigkeitsmodus",
		"Limitierte Öffnung. Verwende deine eigenen Mädchen, um die Stufen herauszufordern. Danach erhälst du auf Basis der Rundenanzahl, die du gebraucht hast und den Herausforderungsmalen einen Rang und gewinnst reiche Belohnungen."
	}
}

return table
