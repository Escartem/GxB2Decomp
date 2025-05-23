﻿-- chunkname: @../../../Product/Bundles/Android/src/data/tables/de_de/old_building_buff_text_de_de.lua

local table = {}

table.keys = {
	id = 1,
	name = 2,
	desc = 3
}
table.rows = {
	["1"] = {
		1,
		"Dicker Panzer",
		"Erhöht die HP von allen Gegnern um 30%"
	},
	["2"] = {
		2,
		"Adrenalin",
		"Erhöht den Angriff von allen Gegnern um 30%"
	},
	["3"] = {
		3,
		"Schutzunterstand",
		"Krit. Widerstand aller Gegner um 30% erhöht (Bei der Berechnung, ob der Angriff ein kritischer Treffer wird oder nicht, wird die Krit. Rate des Angreifers um den Wert des Krit. Widerstands des Ziels verringert)."
	},
	["4"] = {
		4,
		"Miasma",
		"Reduziert die erhaltene Heilung von deinen Mädchen um 60%"
	},
	["5"] = {
		5,
		"Energieablenkung",
		"In den ersten 3 Runden können deine Mädchen keine aktiven Fertigkeiten freigeben"
	},
	["6"] = {
		6,
		"Zusammensein",
		"Wenn die Gegner Schaden erleiden, werden sie den Schaden mit ihren Verbündeten teilen"
	},
	["7"] = {
		7,
		"Heilverstärkung",
		"Erhöht zu Ende der Runde die HP aller Gegner um 15% ihrer Max. HP"
	},
	["8"] = {
		8,
		"Schmerzübertragung",
		"Zu Ende der Runde wird jeder Gegner seine 2 zufälligen Debuffs auf eine seiner Verbündeten übertragen (Der Kontroll-Debuff wird bevorzugt übertragen und die Verbündete, deren erlittenen Debuffs am wenigsten sind, wird bevorzugt als Zielmädchen gewählt.)"
	},
	["9"] = {
		9,
		"Ultimative Sperre",
		"Wenn ein Gegner zum ersten Mal einen tödlichen Angriff erleidet, bekommt er 2 Schilde, damit er nicht davon getötet werden kann. Zur gleichen Zeit wird eine zufällige Verbündete gesperrt (sie kann sich nicht bewegen und ihre passiven Fertigkeiten, Potenziale oder Fertigkeiten der Rüstungssets können nicht ausgelöst werden und es dauert 2 Runden)."
	},
	["10"] = {
		10,
		"Unbekannte Fessel",
		"Zu Beginn des Kampfes werden 3 zufällige Mädchen deines Teams 2 Runden lang gefesselt (Ihre passiven Fertigkeiten können nicht ausgelöst werden. Dieser Effekt kann nicht entfernt werden.). Alle 2 Runden wird dieser Effekt ausgelöst."
	},
	["11"] = {
		11,
		"Panzerplatte",
		"Wenn ein Gegner einen Schaden erleidet, wird dieser Einzelschaden nicht mehr als 10% seiner Max. HP sein."
	},
	["12"] = {
		12,
		"Blind machen",
		"Zu Beginn des Kampfs werden deine 2 zufälligen Mädchen blind gemacht (Ihre aktiven Fertigkeiten werden gezwungenermassen nur einen zufälligen Gegner angreifen und es dauert 1 Runde.). Dieser Effekt wird jede Runde 1 Mal ausgelöst."
	},
	["13"] = {
		13,
		"Bluten",
		"Zu Ende der Runde erleiden deine Mädchen Schaden, der 12% ihrer Max. HP gleicht."
	},
	["14"] = {
		14,
		"Verzögerer",
		"Zu Beginn des Kampfs erhalten alle Gegner eine 90%ige Schadensermäßigung (einschließlich prozentiges Schadens). Zu Ende der Runde wird diese Schadensermäßigung um 10% reduziert und maximal auf 50%."
	},
	["15"] = {
		15,
		"Dorn",
		"Wenn deine Mädchen Standardangriffe oder aktive Fertigkeiten freigeben und Schaden verursachen, werden ihnen 100% des verursachten Schadens zugefügt."
	},
	["16"] = {
		16,
		"Gesamtangriff",
		"Zu Beginn des Kampfs erhalten alle Gegner 200 Energie. In den ersten 2 Runden regeneriert sich die Energie aller Gegner zu Ende der Runde um 100. Ab der 3. Runde regeneriert sich die Energie aller Gegner zu Ende der Runde um 50."
	},
	["17"] = {
		17,
		"Schutzkleidung",
		"In der ersten Runde sind die Gegner immun gegen alle Debuffs und in den ersten 2 Runden erleiden sie keinen Schaden."
	},
	["18"] = {
		18,
		"Müdigkeit",
		"Reduziert die Blockade deiner Krieger um 20%, die Präzision deiner Magier und Ranger um 20%, den Rüstungsbruch deiner Mörder um 25% und die Heilung deiner Priester um 15%"
	},
	["19"] = {
		19,
		"Desinfektionsmittel",
		"Am Ende der Runde entfernt jeder Gegner zufällig 3 erlittene Debuffs"
	},
	["20"] = {
		20,
		"Mobilisieren",
		"Die ersten 2 Gegner, die einen tödlichen Schaden erleiden, regenerieren ihre HP sofort um 100%."
	},
	["21"] = {
		21,
		"Energietrank",
		"Erhöht zum Ende einer Runde 2 Runden lang die HP eines zufälligen Gegners in der Frontline um 8% seiner max. HP und den Angriff eines zufälligen Gegners in der Backline um 20%."
	},
	["22"] = {
		22,
		"Schwindel",
		"Betäubt in ungeradzahligen Runden 1 Runde lang 1 zufällige Verbündete in der Frontline, in geradzahligen Runden wird 1 zufällige Verbündete in der Backline 1 Runde lang betäubt."
	},
	["23"] = {
		23,
		"Kreuzinfektion",
		"Vermindert in ungeradzahligen Runden den Schaden, der von den Verbündeten auf den ungeradzahligen Positionen verursacht wird, um 15%. In geradzahligen Runden wird die erhaltene Heilung der Verbündeten auf den geradzahligen Positionen um 30% vermindert."
	},
	["24"] = {
		24,
		"Verfolgung",
		"Erhöht zu Beginn des Kampfes 3 Runden lang den Schaden, den die Verbündete mit den niedrigsten HP erleidet, um 20%. Wenn ein Gegner ein zufälliges Ziel angreift, wird die Verbündete mit den niedrigsten HP bevorzugt gewählt."
	},
	["25"] = {
		25,
		"Kraftlosigkeit",
		"Vermindert den Angriff aller Mädchen des eigenen Teams um 10%."
	},
	["26"] = {
		26,
		"Auswegslosigkeit",
		"Vermindert alle Schäden, die die Gegner erleiden, um 30%, wenn deren HP niedriger als 50% sind."
	},
	["27"] = {
		27,
		"Schmerzlosigkeit",
		"Verringert alle von den Gegnern erlittenen Schäden um 70%. Fügt 4 Runden lang zum Ende einer Runde den Gegnern 25% von den verringerten Schäden zu (kann weder übernommen noch entfernt werden)."
	},
	["28"] = {
		28,
		"Geschwächt",
		"Vermindert die HP aller Mädchen des eigenen Teams um 15%"
	},
	["29"] = {
		29,
		"Demoralisation",
		"Die Mädchen des eigenen Teams können keine kritischen Treffer mehr landen. (Außer Fertigkeiten, die sicher einen Krit. Schaden verursacht.)"
	},
	["30"] = {
		30,
		"Rache",
		"Jedes Mal, wenn ein Gegner stirbt, werden die HP von allen Gegnern um 30% ihrer max. HP erhöht. Ihr Angriff, Präzision, Blockade und Krit. Rate werden 3 Runden lang jeweils um 30% erhöht."
	},
	["31"] = {
		31,
		"Unsichtbarkeit",
		"Wenn die HP von einem Gegner im Kampf zum ersten Mal niedriger als 50% liegen, wird er 4 Runden unsichtbar werden (weicht Angriffen gegen ein einzelnes Ziel oder Angriffen gegen ein zufälliges Ziel aus. Alle erlittenen Schäden werden um 50% verringert und die Krit. Rate um 100% erhöht.)"
	},
	["32"] = {
		32,
		"Verbannung",
		"Verbannt zu Beginn des Kampfes die Verbündete mit den höchsten HP bis zum Ende des Kampfes (HP und Energie des verbannten Mädchens werden nicht geändert. Das verbannte Mädchen kann sich weder bewegen noch als zufälliges Ziel gewählt werden. Dem verbannten Mädchen werden weder Buffs noch Debuffs gegeben. Wenn in einem Team nur noch verbannte Mädchen überlebt haben, verliert dieses Team den Kampf.)"
	},
	["33"] = {
		33,
		"Heilungsfluch",
		"Zu Beginn des Kampfs erhalten alle Mädchen des eigenen Teams 3 Schichten Heilungsfluch. Wenn der Heilungsfluch entfernt wird, fügt jede Schicht dem Befallenen einen Schaden in Höhe von 10% seiner max. HP zu."
	},
	["34"] = {
		34,
		"Erschöpfung",
		"Vermindert die Energie, die die Mädchen des eigenen Teams erhalten werden, um 50%. Die Verbündeten mit 0 Energie können keinen Schaden verursachen. Der Angriff der Verbündeten, die mehr als 50 Energie haben, wird um 20% vermindert. Zum Ende der Runde wird die Energie von den Verbündeten, die nur 50 Energie oder weniger haben, geleert."
	},
	["35"] = {
		35,
		"Todesruf",
		"Gibt zu Beginn des Kampfes der Verbündeten mit dem höchsten Angriffswert den Effekt \"Todesruf\". (Todesruf: Dieser Effekt kann nicht entfernt werden. Das Mädchen wird 6 Runden nach dem Erhalten dieses Effekts sterben. Stirbt das Mädchen, wird dieser Effekt von der lebenden Verbündeten mit dem höchsten Angriffswert übernommen.)"
	},
	["36"] = {
		36,
		"Blockade",
		"In einer Runde kann nur eines deiner Mädchen ihre aktive Fertigkeit freisetzen. Hat das Mädchen ihre aktive Fertigkeit freigesetzt, wird ihr Angriff 6 Runden lang um 100% verringert."
	},
	["37"] = {
		37,
		"Schmerzempfindlich",
		"Der Angriff deiner Mädchen wird ihren HP angepasst. Liegen die HP deiner Mädchen bei 100%,  wird auch der Angriffswert 100% ihres ursprünglichen AW sein. Liegen die HP bei 0%, fällt der auch AW auf 0% ihres ursprünglichen AW."
	},
	["38"] = {
		38,
		"Angriffsraub",
		"Zu Beginn jeder Runde der ersten 4 Runden im Kampf werden die Gegner den Mädchen deines Teams 5% ihres Angriffs stehlen. Dieser Effekt kann nicht entfernt werden. (Jeder Gegner wird den Angriff desjenigen Mädchens stehlen, das auf der gleichen Position steht wie er selbst. Steht auf dem entsprechenden Platz kein Mädchen, findet der Diebstahl nicht statt.)"
	},
	["39"] = {
		39,
		"Steinschild",
		"Zu Beginn des Kampfes wird ein Schutzwall in Höhe von 1200% des AW deines Mädchens mit dem höchsten AW durchschnittlich an alle lebenden Gegner verteilt, was jede Runde einmal ausgelöst werden kann."
	},
	["40"] = {
		40,
		"Wurmangriff",
		"Zum Ende der Runde erleiden deine Mädchen jeweils 3 Runden lang einen zufälligen kontinuierlichen Schaden (Blut-, Brenn oder Giftschaden) in Höhe von 10% seiner eigenen max. HP."
	},
	["41"] = {
		41,
		"Energieströmung",
		"Erhöht den Angriff und den zugefügten Schaden aller Gegner jeweils um 100%. Alle Gegner haben eine 100%ige Wahrscheinlichkeit, aktive Fertigkeiten und Standardangriff zweimal aufeinanderfolgend durchzuführen."
	},
	["42"] = {
		42,
		"Notfallverband",
		"Reduziert den Angriff deiner Mädchen um 50%. Zum Ende der Runde werden die Gegner allen in dieser Runde erlittenen Schäden entsprechend gleichwertige HP erhalten."
	}
}

return table
