﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/fr_fr/skill_buff_text_fr_fr.lua

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
		"Augmentation d'Attaque",
		"Augmente l'Attaque de la cible."
	},
	["2"] = {
		2,
		"hp|hpP|addHpLimit",
		1,
		"Augmentation des PV",
		"Augmente les PV de la cible."
	},
	["3"] = {
		3,
		"arm|armP|siphonArm",
		1,
		"Augmentation d'Armure",
		"Augmente l'Armure de la cible."
	},
	["4"] = {
		4,
		"spd|spdSteal",
		1,
		"Augmentation de Vitesse",
		"Augmente la Vitesse de la cible."
	},
	["5"] = {
		5,
		"sklP",
		1,
		"Augmentation des Dégâts des Compétences",
		"Augmente les Dégâts des Compétences de la cible."
	},
	["6"] = {
		6,
		"hit",
		1,
		"Augmentation de Précision",
		"Augmente la Précision de la cible."
	},
	["7"] = {
		7,
		"miss|missLimit2",
		1,
		"Augmentation de Blocage",
		"Augmente le Blocage de la cible."
	},
	["8"] = {
		8,
		"crit",
		1,
		"Augmentation des Critiques",
		"Augmente les Critiques de la cible."
	},
	["9"] = {
		9,
		"critTime|critTimeBlood",
		1,
		"Augmentation des Dégâts Critiques",
		"Augmente les Dégâts Critiques de la cible."
	},
	["10"] = {
		10,
		"brk",
		1,
		"Augmentation de Pénétration d'Armure",
		"Augmente la Pénétration d'Armure de la cible."
	},
	["11"] = {
		11,
		"free",
		1,
		"Augmentation d'Immunité",
		"Augmente l'Immunité de la cible."
	},
	["12"] = {
		12,
		"trueAtk",
		1,
		"Augmentation des Dégâts Divins",
		"Augmente les Dégâts Divins de la cible."
	},
	["13"] = {
		13,
		"decDmg|decDmgBlood|decDmgNadd|allHarmDec",
		1,
		"Augmentation de Résistance aux Dégâts",
		"Augmente la Résistance aux Dégâts de la cible."
	},
	["14"] = {
		14,
		"healB",
		1,
		"Augmentation des Soins Reçus",
		"Augmente les Soins Reçus de la cible."
	},
	["15"] = {
		15,
		"healI",
		1,
		"Augmente des Soins",
		"Augmente les Soins de la cible."
	},
	["16"] = {
		16,
		"atk|atkP|siphonAtk|vanity",
		2,
		"Réduction d'Attaque",
		"Réduit l'Attaque de la cible."
	},
	["17"] = {
		17,
		"hp|hpP",
		2,
		"Réduction des PV",
		"Réduit les PV de la cible."
	},
	["18"] = {
		18,
		"arm|armP|siphonArm",
		2,
		"Réduction d'Armure",
		"Réduit l'Armure de la cible."
	},
	["19"] = {
		19,
		"spd|spdSteal",
		2,
		"Réduction de Vitesse",
		"Réduit la Vitesse de la cible."
	},
	["20"] = {
		20,
		"sklP",
		2,
		"Réduction des Dégâts des Compétences",
		"Réduit les Dégâts des Compétences de la cible."
	},
	["21"] = {
		21,
		"hit",
		2,
		"Réduction de Précision",
		"Réduit la Précision de la cible."
	},
	["22"] = {
		22,
		"miss|missLimit2",
		2,
		"Réduction de Blocage",
		"Réduit le Blocage de la cible."
	},
	["23"] = {
		23,
		"crit",
		2,
		"Réduction des Critiques",
		"Réduit les Critiques de la cible."
	},
	["24"] = {
		24,
		"critTime|critTimeBlood",
		2,
		"Réduction des Dégâts Critiques",
		"Réduit les Dégâts Critiques de la cible."
	},
	["25"] = {
		25,
		"brk",
		2,
		"Réduction de Pénétration d'Armure",
		"Réduit la Pénétration d'Armure de la cible."
	},
	["26"] = {
		26,
		"free",
		2,
		"Réduction d'Immunité",
		"Réduit l'Immunité de la cible."
	},
	["27"] = {
		27,
		"trueAtk",
		2,
		"Réduction des Dégâts Divins",
		"Réduit les Dégâts Divins de la cible."
	},
	["28"] = {
		28,
		"decDmg|decDmgBlood|decDmgNadd",
		2,
		"Réduction de Résistance aux Dégâts",
		"Réduit la Résistance aux Dégâts de la cible."
	},
	["29"] = {
		29,
		"healB",
		2,
		"Réduction des Soins Reçus",
		"Réduit les Soins Reçus de la cible."
	},
	["30"] = {
		30,
		"healI",
		2,
		"Réduction des Soins",
		"Réduit les Soins de la cible."
	},
	["31"] = {
		31,
		"weak",
		"",
		"Affaiblissement",
		"Marque : augmente les dégâts subis par la cible marquée."
	},
	["32"] = {
		32,
		"stun",
		"",
		"Étourdir",
		"Effet de Contrôle : la cible sera temporairement incapable de lancer sa Compétence Active ou d'attaquer les ennemis."
	},
	["33"] = {
		33,
		"ice",
		"",
		"Gêler",
		"Effet de Contrôle : la cible sera temporairement incapable de lancer sa Compétence Active ou d'attaquer les ennemis."
	},
	["34"] = {
		34,
		"stone",
		"",
		"Pétrifier",
		"Effet de Contrôle : la cible sera temporairement incapable de lancer sa Compétence Active ou d'attaquer les ennemis."
	},
	["35"] = {
		35,
		"forbid",
		"",
		"Silence",
		"Effet de Contrôle : la cible sera temporairement incapable de lancer sa Compétence Active."
	},
	["36"] = {
		36,
		"hot|healP",
		"",
		"Récupération des PV",
		"La Fille sous cet effet récupère des PV au début de chaque tour."
	},
	["37"] = {
		37,
		"dotPoison",
		"",
		"Empoisonnement",
		"Dégâts sur la Durée : la cible affectée par cet effet subira des dégâts correspondants au début de chaque tour jusqu'à la fin de cet effet."
	},
	["38"] = {
		38,
		"dotBlood",
		"",
		"Saignement",
		"Dégâts sur la Durée : la cible affectée par cet effet subira des dégâts correspondants au début de chaque tour jusqu'à la fin de cet effet."
	},
	["39"] = {
		39,
		"dotFire",
		"",
		"Brûlure",
		"Dégâts sur la Durée : la cible affectée par cet effet subira des dégâts correspondants au début de chaque tour jusqu'à la fin de cet effet."
	},
	["40"] = {
		40,
		"rImpress",
		"",
		"Retardement",
		"Marque : infligera des dégâts après 1 tour."
	},
	["41"] = {
		41,
		"cImpress",
		"",
		"Coup Critique",
		"Marque : la cible marquée subira des dégâts lorsqu'elle reçoit un Coup Critique."
	},
	["42"] = {
		42,
		"fImpress",
		"",
		"Yin Yang",
		"Marque : augmente les dégâts infligés par Prêtresse à la cible marquée."
	},
	["43"] = {
		43,
		"oImpress",
		"",
		"Frelon",
		"Marque : augmente les dégâts infligés à la cible marquée (cumulable jusqu'à 300%)."
	},
	["44"] = {
		44,
		"dotTwins",
		"",
		"Porteuses de Destinée",
		"La cible sous cet effet subit immédiatement des dégâts et subira encore une fois ces dégâts au début du tour suivant."
	},
	["45"] = {
		45,
		"aggression",
		"",
		"Charge",
		"Effet de Compétence : lorsque la cible marquée lance sa Compétence Active, elle consomme toutes les couches de Charge, et chaque couche inflige des dégâts à l'ennemi ayant le moins de PV et lui inflige également des dégâts de Saignement."
	},
	["47"] = {
		47,
		"frighten",
		"",
		"Effrayer",
		"Effet de Contrôle : la cible sera temporairement incapable de lancer son Attaque Basique."
	},
	["48"] = {
		48,
		"decDmgShieldLimit5",
		"",
		"Bouclier de l'Enfer",
		"Effet de Compétence : augmente l'Immunité et la Résistance aux Dégâts de Kratos, 5 couches au maximum."
	},
	["49"] = {
		49,
		"balanceImpressLimit30",
		"",
		"Marque d'équilibre",
		"Marque : lorsque la cible marquée lance sa Compétence Active, elle subit des dégâts (3000% de la valeur de l'Attaque de Lucifael au maximum)."
	},
	["50"] = {
		50,
		"tearLimit2",
		"",
		"Désintégration",
		"Marque : réduit le Blocage de la cible marquée et augmente les Dégâts sur la Durée infligés à cette cible marquée."
	},
	["51"] = {
		51,
		"getImmenu",
		"",
		"Manque de Respect",
		"Effet de Compétence : utilisé pour neutraliser l'Effet de Contrôle."
	},
	["52"] = {
		52,
		"getReflect",
		"",
		"Audace",
		"Marque : lorsque Rina subit une Compétence Active ou une Attaque Basique, 1 couche d'Audace sera utilisée pour neutraliser une partie des dégâts et les renvoyer à l'attaquant."
	},
	["53"] = {
		53,
		"moonShadow",
		"",
		"Silhouette Lunaire",
		"Effet de Compétence : lorsqu'une alliée de Viviane subit une Attaque Basique ou Compétence Active, Viviane a des chance de neutraliser 2 Effets Négatifs sur cette alliée.\nL'alliée de Viviane ayant le moins de PV récupèrera des PV à la fin du tour.\nSi Viviane est vaincue avant la fin de la durée de Silhouette Lunaire, celle-ci disparaîtra avec elle."
	},
	["54"] = {
		54,
		"starMoon",
		"",
		"Marque Étoilée",
		"Effet de Compétence : lorsque Viviane est attaquée, la cible marquée avec ses Marques Étoilées subira une partie des dégâts que Viviane subit. Lorsque Viviane reçoit des Effets Négatifs, elle a de la chance de donner ces Effets Négatifs aux cibles marquées avec ses Marques Étoilées."
	},
	["55"] = {
		55,
		"fragranceGet",
		"",
		"Effluves de Pêcher",
		"Effet de Compétence : chaque charge d'Effluves de Pêcher augmente supplémentairement la Résistance aux Dégâts de la cible marquée."
	},
	["56"] = {
		56,
		"getAbsorbShield",
		"",
		"Bouclier Floral",
		"Absorbe les dégâts de la prochaine Compétence Active ou Attaque Basique subie et convertit une partie de ces dégâts en Soins (N'absorbe pas les dégâts infligés par le Serviteur, les Compétences Passives et les Marques)."
	},
	["57"] = {
		57,
		"getHealCurse",
		"",
		"Bénédiction Maudite",
		"Effet de Compétence : neutralise le prochain effet de Soin et convertit une partie des Soins que la cible devait recevoir en dégâts (N'inclut pas les Soins des Serviteurs)."
	},
	["59"] = {
		59,
		"getLeaf",
		"",
		"Rapetissage",
		"Effet de Compétence : augmente les dégâts subis par la cible marquée et réduit ses dégâts infligés. Lorsque la cible marquée lancent sa Compétence Active ou son Attaque Basique, elle subira des dégâts (1500% de la valeur de l'Attaque de Vera au maximum)."
	},
	["60"] = {
		60,
		"getThorns",
		"",
		"Berceuse",
		"Effet de Compétence : si la cible marquée subit une Compétence Active ou une Attaque Basique, elle infligera 100% d'Attaque à l'attaquant en ignorant son Armure et récupérera des PV."
	},
	["62"] = {
		62,
		"apateRevive",
		"",
		"Ébi",
		"Effet de Compétence : à la fin du tour, inflige des dégâts à l'ennemi ayant le moins de PV."
	},
	["63"] = {
		63,
		"ReduceSpd",
		"",
		"Anoxie",
		"Marque : chaque couche d'Anoxie réduit la Vitesse de la cible marquée, 5 couches au maximum."
	},
	["64"] = {
		64,
		"absorbDamage",
		"",
		"Bouclier de Vent",
		"Effet de Compétence : absorbe des dégâts pendant 3 tours (ne se déclenche qu'une seule fois)."
	},
	["65"] = {
		65,
		"xifengSpd",
		"",
		"Bonus de Vitesse",
		"Effet de Compétence : augmente la Vitesse de la cible marquée (Bonus perdu lorsque Shina est vaincu)."
	},
	["67"] = {
		67,
		"ridicule",
		"",
		"Provoquer",
		"Effet de Contrôle : l'Attaque Basique et les Compétences de la cible marquée seront ciblés sur Ambre."
	},
	["68"] = {
		68,
		"outBreak",
		"",
		"Vocation",
		"Effet de Compétence : la Compétence Active et l'Attaque Basique d'Ambre ont 100% de chance de donner un Coup Critique et ne peuvent pas être bloqués."
	},
	["69"] = {
		69,
		"atkImpressBonus",
		"",
		"Malédiction Sanguinaire",
		"Marque : à chaque couche de Malédiction Sanguinaire, les dégâts de la cible subis par Vanessa seront augmentés.\nAprès que la cible marquée soit vaincue, chaque couche de Malédiction Sanguinaire infligera des dégâts à l'ennemi ayant l'Attaque la plus élevée."
	},
	["70"] = {
		70,
		"suckRealBloodGet",
		"",
		"Soif de Sang",
		"Effet de Compétence : lorsque Vanessa lance sa Compétence Active, inflige des dégâts aux ennemis et récupère des PV."
	},
	["71"] = {
		71,
		"trueVampire",
		"",
		"Traque Sanguinaire",
		"Effet de Compétence : augmente les Critiques, l'Immunité, la Précision de Vanessa, et s'immunise contre Saignement."
	},
	["72"] = {
		72,
		"sameAtk",
		"",
		"Poussière Lunaire",
		"Effet de Compétence : lorsque Éléanor lance sa Compétence Active ou son Attaque Basique, la cible marquée avec Poussière Lunaire subira 2 fois les dégâts, et Éléanor récupèrera des PV."
	},
	["73"] = {
		73,
		"mistletoe",
		"",
		"Parasite",
		"Effet de Compétence : réduit l'Attaque et les Soins Reçus de la cible marquée (3 couches au maximum)."
	},
	["74"] = {
		74,
		"teleishaRecoverCost",
		"",
		"Marque Divine",
		"Effet de Compétence : utilisé pour déclencher la Compétence Passive - Protection du Seigneur de Térèsa."
	},
	["75"] = {
		75,
		"sunArrow",
		"",
		"Flèche Dorée",
		"Effet de Compétence : lorsque Angélina lance sa Compétence Active ou son Attaque Basique, chaque Flèche Dorée infligera des dégâts à l'ennemi ayant le moins de PV."
	},
	["76"] = {
		76,
		"feisinaExplode",
		"",
		"Étoile Obscure",
		"Marque : explose à la fin du tour, infligeant des dégâts aux cibles marquées (une partie du total de leurs dégâts subis respectifs par Compétence Active et Attaque Basique pendant l'effectivité de cette marque). Si la cible a été marquée avec Étoile Obscure, elle subira des dégâts en fonction de ses PV Max."
	},
	["77"] = {
		77,
		"feisinaWeak",
		"",
		"Prison Infernale",
		"Effet de Compétence : réduit l'Armure, la Résistance aux Dégâts, la Résistance Totale, le Blocage et l'Esquive de la cible marquée."
	},
	["78"] = {
		78,
		"feisinaMiss",
		"",
		"Bénédiction du Démon",
		"Effet de Compétence : augmente l'Esquive de la cible marquée."
	},
	["79"] = {
		79,
		"kaixiHurtDmg",
		"",
		"Œil-de-chat",
		"Effet de Compétence : après que la cible marquée ait lancé sa Compétence Active ou son Attaque Basique, elle infligera des dégâts aux ennemis et récupérera des PV."
	},
	["80"] = {
		80,
		"mistletoeNew",
		"",
		"Parasite",
		"Effet de Compétence : réduit l'Attaque et les Soins Reçus de la cible marquée (3 couches au maximum)."
	},
	["81"] = {
		81,
		"naturalLaw",
		"",
		"Grondement de la Nature",
		"Effet de Compétence : lorsque la cible marquée lance sa Compétence Active, effectue son Attaque Basique ou déclenche ses Compétences Passives qui affectent l'ennemi, si la cible est sélectionnée aléatoirement, Lys sera la première cible. Si Lys subit des dégâts venant de la cible marquée avec Parasite, elle récupérera des PV."
	},
	["82"] = {
		82,
		"futureObserve",
		"",
		"Prédiction Dynamique",
		"Effet de Compétence : utilisé pour déclencher la Compétence Passive - Voyage Temporel de Monica."
	},
	["83"] = {
		83,
		"fateWheel",
		"",
		"Roue de la Fortune",
		"Effet de Compétence : lorsque Monica marque une cible avec Roue de la Fortune, la limite de déclenchement de la Compétence - Voyage Temporel sera réinitialisée pour cette cible.\nAugmente l'Attaque et les Chances de Contrôle de la cible marquée.\nLorsque Monica se soigne, la cible marquée avec Roue de la Fortune par cette Monica récupère des PV équivalent à ceux de cette Monica."
	},
	["84"] = {
		84,
		"timeRule",
		"",
		"Loi du Temps",
		"Effet de Compétence : réduit les Soins Reçus, l'Immunité de la cible marquée."
	},
	["85"] = {
		85,
		"magicShoot",
		"",
		"Blessure Mortelle",
		"Effet de Compétence : réduit les Soins Reçus et la Résistance Totale de la cible marquée."
	},
	["86"] = {
		86,
		"dianaDie",
		"",
		"Cauchemar",
		"Effet de Compétence : à la fin du tour, la cible marquée subira des dégâts.\nAprès la mort de la cible marquée, tous les ennemis subiront des dégâts."
	},
	["87"] = {
		87,
		"lubanHurtB",
		"",
		"Fuite d'Éther",
		"Effet de Compétence : augmente les Dégâts Directs reçus de la cible marquée."
	},
	["88"] = {
		88,
		"lubanHurtC",
		"",
		"Épuisement d'Éther",
		"Effet de Compétence : augmente les Dégâts Directs reçus et réduit les Soins Reçus de la cible marquée."
	},
	["89"] = {
		89,
		"deathSpd",
		"",
		"Ralentissement",
		"Effet de Compétence : réduit la Vitesse de la cible marquée."
	},
	["90"] = {
		90,
		"luobiMark",
		"",
		"Charge Laser",
		"Effet de Compétence : chaque couche de Charge Laser augmente de 20% la Résistance à la réduction d'Énergie de Robbie et aussi lui permet de réitérer une seconde fois la même attaque à 1 ennemi aléatoire de la ligne arrière."
	},
	["91"] = {
		91,
		"kawenMark",
		"",
		"Papillon Venimeux",
		"Effet de Compétence : pour chaque couche de Papillon Venimeux, augmente les chances d'un Coup Critique et les Dégâts Critiques au marqueur (valable uniquement sur la cible marquée).\nSi la marquée avec Papillon Venimeux attaque son marqueur, les alliées de la ligne avant du marqueur l'aideront à subir des dégâts infligés."
	},
	["92"] = {
		92,
		"mayaBuffResist",
		"",
		"Malédiction Infâme",
		"Marque : lorsque la cible marquée reçoit un Bonus d'Attribut, 1 couche de Malédiction Infâme sera consommée pour neutraliser 1 couche de Bonus d'Attribut et lui infligera des dégâts."
	},
	["93"] = {
		93,
		"mayaHpLoseSeal",
		"",
		"Cicatrice du Chaos",
		"Effet de Compétence : chaque couche de Cicatrice du Chaos consomme une partie des PV Max de la cible marquée et réduit ses Soins Reçus (les PV perdus dû à la Cicatrice du Chaos ne peuvent pas être soignés)."
	},
	["94"] = {
		94,
		"snowWindMix",
		"",
		"Pouvoir de Givre",
		"Effet de Compétence : augmente les Soins Reçus, la Résistance Totale et la récupération d'Énergie de la cible marquée."
	},
	["95"] = {
		95,
		"hpShield",
		"",
		"Barrière",
		"Effet de Compétence : absorbe les dégâts infligés par les ennemis. La valeur d'une Barrière ne peut pas dépasser 100% des PV Max de la Fille étant sous la protection de cette Barrière. Celle-ci se désintégrera lorsque sa valeur sera à 0."
	},
	["96"] = {
		96,
		"degulaDebuff",
		"",
		"Veine Pourpre",
		"Dégâts sur la Durée : lorsqu'un ennemi est marqué avec Veine Pourpre, Lord Dracula lui infligera immédiatement des dégâts et lui infligera encore une fois ces dégâts à la fin de chaque tour jusqu'à ce que toutes les couches de Veine Pourpre disparaissent. Lord Dracula récupèrera ensuite des PV en fonction de tous les dégâts infligés par Veine Pourpre."
	},
	["97"] = {
		97,
		"degulaCount",
		"",
		"Pur-Sang",
		"Effet de Compétence : utilisé pour augmenter les dégâts infligés de Veine Pourpre."
	},
	["98"] = {
		98,
		"hpShieldFromHeal",
		"",
		"Cube Défensif",
		"Effet de Compétence : chaque fois que Stigma récupère des PV, 1 couche de Cube Défensif sera consommée et convertira une partie de ses PV récupérés en Barrière."
	},
	["99"] = {
		99,
		"xigemaPower",
		"",
		"Amplification Matricielle",
		"Effet de Compétence : augmente l'Immunité la Précision de la cible marquée."
	},
	["100"] = {
		100,
		"hpShieldRecover",
		"",
		"Bénédiction du Vent",
		"Effet de Compétence : la cible récupérera des PV à la fin de chaque tour et obtiendra également une Barrière de la même valeur (l'effet de la Barrière absorbant les dégâts sera augmenté)."
	},
	["101"] = {
		101,
		"getLight|addGetLight",
		"",
		"Lumière Céleste",
		"Effet de Compétence : utilisé pour déclencher la Compétence - Sceau de Lumière d'Uriel."
	},
	["102"] = {
		102,
		"wulieerSeal",
		"",
		"Sceau de Lumière",
		"Effet de Contrôle : la cible marquée ne peut déclencher aucune Compétence Passive. Lorsque la cible marquée se débarrasse de ce contrôle, elle subira des dégâts."
	},
	["103"] = {
		103,
		"fullEnergyHurt",
		"",
		"Mélodie Mélancolique",
		"Marque : lorsque la cible marquée obtient 100 d'Énergie ou plus, elle subit des dégâts pour chaque point d'Énergie possédé. Suite à cela, toute l'Énergie de cette cible sera consommée et Mélodie Mélancolique disparaîtra."
	},
	["104"] = {
		104,
		"qianheziHeal",
		"",
		"Plume de Grue",
		"Effet de Compétence : augmente les dégâts subis de la cible marquée et réduit son Attaque. Lorsque la cible marquée est soignée, son alliée ayant le moins de PV subira des dégâts équivalent à la valeur de ses Soins reçus et son ennemi ayant le moins de PV récupèrera des PV de cette même valeur (déclenchable 10 fois au maximum par tour)."
	},
	["105"] = {
		105,
		"qianheziDec",
		"",
		"Protection Céleste",
		"Effet de Compétence : la cible marquée sera immunisée contre les 2 prochaines attaques (la Protection Céleste disparaîtra lorsque la cible marquée aura été immunisée contre 2 attaques). Si la cible marquée reçoit à nouveau une Protection Céleste ou que la Protection Céleste disparaît, la cible marquée obtiendra une Barrière équivalent à la valeur des dégâts immunisés."
	},
	["106"] = {
		106,
		"spzglHitted",
		"",
		"Vent Contraire",
		"Marque : lorsque la cible marquée subit une Attaque Basique ou une Compétence Active, cette Marque sera consommée pour lui infliger des dégâts et aura des chances de l'étourdir (si la cible marquée est vaincue lorsque cette Marque est déclenchée, elle ne pourra pas être étourdie)."
	},
	["107"] = {
		107,
		"spzglAllHarm",
		"",
		"Vent Arrière",
		"Marque : augmente les dégâts infligés en fonction de l'Attaque de la cible marquée."
	},
	["108"] = {
		108,
		"dotMaxHp",
		"",
		"Venin Hydrique",
		"Dégâts sur la Durée : la cible affectée par cet effet subira des dégâts correspondants au début de chaque tour jusqu'à la fin de cet effet (si la valeur de ces dégâts est inférieure à 50% de l'Attaque de Chimère des Océans, elle inflige directement 50% d'Attaque à la cible marquée)."
	},
	["109"] = {
		109,
		"hypoxia",
		"",
		"Asphyxie",
		"Effet de Compétence : réduit de 50% les Soins Reçus, de 50% la Récupération d'Énergie de la cible dans cet état et augmente de 100% ses dégâts subis."
	},
	["110"] = {
		110,
		"xierkediDot",
		"",
		"Miasme",
		"Effet de Compétence : réduit les dégâts que Selkis subit, infligés par sa cible marquée, puis cette dernière subira des dégâts en fonction de ses PV perdus à la fin de chaque tour."
	},
	["111"] = {
		111,
		"xierkediPower",
		"",
		"Bénédiction du Scorpion",
		"Effet de Compétence : augmente l'Attaque, les Critiques et la Précision de Selkis. Lorsque Selkis est sous la Bénédiction du Scorpion, elle a 100% de chance d'esquiver les dégâts et les effets infligés par les ennemis dont les attaques ciblent des ennemis aléatoires."
	},
	["112"] = {
		112,
		"xingmang",
		"",
		"Murmure Astral",
		"Effet de Compétence : augmente l'Attaque, la Précision et les Dégâts Divins."
	},
	["113"] = {
		113,
		"lockTarget",
		"",
		"Viser",
		"Effet de Compétence : l'Attaque Basique et la Compétence Active de Vanessa viseront la cible marquée."
	},
	["114"] = {
		114,
		"yifuMark",
		"",
		"Flair",
		"Effet de Compétence : utilisé pour renforcer la Compétence Active d'Éva."
	},
	["115"] = {
		115,
		"hpShieldEndToHeal",
		"",
		"Protection Canine",
		"Effet de Compétence : lorsque la Barrière de la cible marquée avec Protection Canine est brisée, ce dernier soignera la cible marquée (Protection Canine disparaîtra après qu'il ait été déclenché)."
	},
	["116"] = {
		116,
		"qiubiteMark",
		"",
		"Magie d'Amour",
		"Effet de Compétence : lorsque Cupidon consomme toutes ses couches de Magie d'Amour, toutes vos Filles obtiendront une Barrière."
	},
	["117"] = {
		117,
		"qiubitePower",
		"",
		"Bénédiction de l'Amour",
		"Effet de Compétence : si les PV d'une cible marquée dépassent ses PV Max après avoir reçu les Soins des compétences, le surplus des Soins seront converti en Barrière de la même valeur. Lorsque la cible marquée est sous la protection d'une Barrière, ses dégâts infligés, sa Résistance Totale et son Attaque seront augmentés."
	},
	["118"] = {
		118,
		"plmxsThorns",
		"",
		"Pentacle Protecteur",
		"Effet de Compétence : réduit les dégâts subis de la cible marquée et renvoie des dégâts subis de la cible marquée à l'attaquant (n'inclut pas les dégâts fixes)."
	},
	["119"] = {
		119,
		"plmxsDebuff",
		"",
		"Flamme des Enfers",
		"Effet de Compétence : réduit les Soins Reçus, la récupération d'Énergie et le Blocage de la cible marquée."
	},
	["120"] = {
		120,
		"freeHarmLeft1",
		"",
		"Chaîne Maudite",
		"Marque, non cumulable : lorsque la cible marquée reçoit un Coup Mortel et déclenche un effet qui l'empêche d'être vaincue par ces dégâts mortels, il ne reste que 1 PV sur lui."
	},
	["121"] = {
		121,
		"lianhuaHittedHeal",
		"",
		"Pureté",
		"Effet de Compétence : lorsqu'une cible marquée subit des dégâts infligés par un ennemi qui est en état de Saignement, l'Attaque de cette cible marquée sera augmentée et elle récupèrera des PV."
	},
	["122"] = {
		122,
		"lianhuaBloodHurt",
		"",
		"Lotus Sanglant",
		"Effet de Compétence : lorsqu'un effet de Saignement est infligé à la cible marquée, elle subira des dégâts supplémentaires."
	},
	["123"] = {
		123,
		"ailisheColor1",
		"",
		"Couleur Primaire · Rouge",
		"Effet de Compétence : réduit la Vitesse de la cible."
	},
	["124"] = {
		124,
		"ailisheColor2",
		"",
		"Couleur Primaire · Jaune",
		"Effet de Compétence : réduit le Blocage de la cible."
	},
	["125"] = {
		125,
		"ailisheColor3",
		"",
		"Couleur Primaire · Bleu",
		"Effet de Compétence : réduit l'Attaque de la cible."
	},
	["126"] = {
		126,
		"ailisheColor12",
		"",
		"Couleur Secondaire · Orange",
		"Effet de Compétence : augmente les dégâts subis de la cible."
	},
	["127"] = {
		127,
		"ailisheColor13",
		"",
		"Couleur Secondaire · Violet",
		"Effet de Compétence : réduit les Soins Reçus et la valeur de Barrière obtenue de la cible."
	},
	["128"] = {
		128,
		"ailisheColor23",
		"",
		"Couleur Secondaire · Vert",
		"Effet de Compétence : réduit les dégâts infligés par la cible."
	},
	["129"] = {
		129,
		"ailisheColor123",
		"",
		"Décoloration",
		"Effet de Compétence : augmente les dégâts subis de la cible dans cet état, sans qu'elle puisse lancer une attaque ni récupérer des PV, Énergies et Barrières."
	},
	["130"] = {
		130,
		"ailisheRound3",
		"",
		"Inspiration Artistique",
		"Effet de Compétence : augmente la Chance de Contrôle et la Résistance aux Dégâts Critiques de la cible."
	},
	["131"] = {
		131,
		"longnvDebuff",
		"",
		"Corne Malheureuse",
		"Effet de Compétence : réduit les Critiques et le Blocage de la cible."
	},
	["132"] = {
		132,
		"shareByHurt",
		"",
		"Écaille Argentée",
		"Effet de Compétence : lorsque la cible marquée est attaquée, Melly l'aidera à subir des dégâts infligés."
	},
	["133"] = {
		133,
		"longnvDead",
		"",
		"Bénédiction du Dragon",
		"Effet de Compétence : augmente les Dégâts Divins et la Résistance Totale de la cible sous la Bénédiction du Dragon. Lorsque cette cible lance sa Compétence Active ou son Attaque Basique aux ennemis, Melly leur infligera des dégâts et lancera également une attaque.\nSi Melly aide la cible sous la Bénédiction du Dragon à vaincre un ennemi, elle se ressuscitera au tour suivant. Si cette cible est vaincue, la Bénédiction du Dragon disparaîtra (Melly disparaîtra également et ne pourra plus attaquer)."
	},
	["134"] = {
		134,
		"ansunaToShield",
		"",
		"Plume de Paon",
		"Effet de Compétence : réduit les dégâts infligés par la cible marquée lorsqu'elle lance une attaque sur Asmae, puis Asmae convertira une partie de ces dégâts en Barrière."
	},
	["135"] = {
		135,
		"ansunaDot",
		"",
		"Ensorcellement",
		"Augmente les Dégâts sur la Durée que la cible marquée subit. La cible marquée subira des dégâts d'Ensorcellement et également ces mêmes dégâts au début de chaque tour et ce, jusqu'à la fin de l'effet."
	},
	["136"] = {
		136,
		"ningshi",
		"",
		"Souffrance",
		"Effet de Compétence : Augmente les dégâts subis, la cible marquée subira des dégâts en fonction de son Attaque lorsqu'elle est marquée et à la fin de chaque tour, en plus, son Énergie sera réduite."
	},
	["137"] = {
		137,
		"shuairuo",
		"",
		"Faiblesse",
		"Effet de Compétence : Réduit les Soins Reçus et la valeur de Barrière obtenue."
	},
	["138"] = {
		138,
		"deathLayerMark",
		"",
		"Ombre Mortelle",
		"Effet de Compétence : réduit l'Attaque de la cible marquée lorsqu'elle obtient 3 couches d'Ombre Mortelle. La cible marqueé a de la chance d'être étourdie au début de chaque tour lorsqu'elle obtient 5 couches d'Ombre Mortelle. La cible marquée sera immédiatement vaincue lorsqu'elle obtient 15 couches d'Ombre Mortelle."
	},
	["139"] = {
		139,
		"shield2",
		"",
		"Carapace du Crabe",
		"Effet de Compétence : lorsque la porteuse subit des dégâts, 1 couche de Carapace du Crabe sera consommée pour neutraliser ces dégâts."
	},
	["140"] = {
		140,
		"blind",
		"",
		"Cadrage Cosmique",
		"Effet de Compétence : réduit la Précision, le Blocage, l'Immunité de la cible marquée, et cette dernière a 75% de chance de manquer ses ennemis."
	},
	["141"] = {
		141,
		"soulTear",
		"",
		"Proie du Centaure",
		"Effet de Compétence : lorsque la cible marquée lance son attaque, elle subira une partie de ses dégâts infligés (2500% de la valeur de l'Attaque d'Effie au maximum). Seules 2 cibles peuvent être simultanément marquées avec Proie du Centaure."
	},
	["142"] = {
		142,
		"soulSeal",
		"",
		"Flèche Stellaire",
		"Effet de Compétence : retarde les effets de Soins. Lorsque la cible est soignée, elle récupère une partie des Soins reçus, puis après que la Flèche Stellaire lui ait été enlevée, elle récupèrera les restants de Soin.\nLorsque la cible est attaquée, elle subira également des dégâts fixes."
	},
	["143"] = {
		143,
		"bosaidongMark",
		"",
		"Perle de l'Océan",
		"Effet de Compétence : après que Neptuna ait obtenu 6 couches de Perle de l'Océan, elle les consommera pour augmenter l'Attaque et l'Armure de toutes ses alliées ((inclut Neptuna, ce bonus fourni à Neptuna sera doublé)."
	},
	["144"] = {
		144,
		"hadisiEnergyGetRate",
		"",
		"Porte de l'Enfer",
		"Effet de Compétence : réduit la valeur de récupération d'Énergie."
	},
	["145"] = {
		145,
		"hadisiDebuff",
		"",
		"Danger de Mort",
		"Effet de Compétence : réduit les Soins Reçus et la valeur de Barrière obtenue."
	},
	["146"] = {
		146,
		"zhousiTrueAtk",
		"",
		"Divinité",
		"Effet de Compétence : augmente les Dégâts Divins."
	},
	["147"] = {
		147,
		"zhousiDot",
		"",
		"Coup de Tonnerre",
		"Effet de Compétence : inflige des dégâts de Brûlure (en fonction des PV Max de la cible) à la cible marquée pendant 2 tours (lorsqu'Coup de Tonnerre est déclenché et à la fin du tour actuel), réduit l'Attaque de la cible marquée et a de la chance de lui donner un Coup de Soleil."
	}
}

return table
