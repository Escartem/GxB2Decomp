﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/fr_fr/partner_challange_newbuff_text_fr_fr.lua

local table = {}

table.keys = {
	id = 1,
	name = 2,
	desc = 3
}
table.rows = {
	["1"] = {
		1,
		"Armure lourde",
		"Augmente les PV de tous les ennemis de 30%."
	},
	["2"] = {
		2,
		"Adrénaline",
		"Augmente l'Attaque de tous les ennemis de 30%."
	},
	["3"] = {
		3,
		"Ranimation",
		"Les 2 premiers ennemis qui subissent des dégâts mortels récupéreront 100% de leur PV."
	},
	["4"] = {
		4,
		"Renforcement",
		"Lorsqu'un ennemi subit des dégâts, ces derniers ne pourront pas être supérieurs à 10% de la valeur de leur PV Max."
	},
	["5"] = {
		5,
		"Revanche",
		"Chaque fois qu'un ennemi meurt, tous les ennemis récupéreront 30% de leurs PV Max, leur Attaque sera augmentée de 30%, leur Précision de 30%, leur Blocage de 30% et leur Critique de 30% pendant 3 tours."
	},
	["6"] = {
		6,
		"Invisible",
		"Lorsque les PV des ennemis sont pour la première fois inférieurs à 50%, ils deviendront invisibles aux alliées pendant 4 tours. (Esquive l'Attaque Basique et les Attaques aléatoires, réduit les dégâts de 50%, et augmente les Critiques de 100%)"
	}
}

return table
