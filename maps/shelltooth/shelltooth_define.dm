/datum/map/shelltooth
	name = "Shelltooth"
	full_name = "Shelltooth Station"
	path = "shelltooth"
	ground_noun = "deck"

	station_levels = list(1, 2, 3, 4)
	contact_levels = list(1, 2, 3, 4)
	player_levels = list(1, 2, 3, 4)


	station_name  = "Shelltooth Station"
	station_short = "Shelltooth"

	dock_name     = "Val Salia Station"
	boss_name     = "Trade Administration"
	boss_short    = "Admin"
	company_name  = "Tradehouse Ivenmoth"
	company_short = "Ivenmoth"
	overmap_event_areas = 11

	default_law_type = /datum/ai_laws/corporate

	// yingspace.png was remixed from Out-Of-Placers assets by Raptie and is included with kind permission.
	lobby_screens = list('maps/shelltooth/lobby/yingspace.png')
	lobby_tracks = list(/music_track/zazie)

	use_overmap = 1
	num_exoplanets = 3
	welcome_sound = 'sound/effects/cowboysting.ogg'
	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."
	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_called_sound = sound('sound/AI/torch/abandonship.ogg', volume = 45)
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."
	evac_controller_type = /datum/evacuation_controller/lifepods

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Please move to a shielded area such as the cargo bay, dormitories or medbay until the radiation has passed."

	potential_theft_targets = list(
		"the tradehouse accounting documents"	= /obj/item/documents/tradehouse/account,
		"the tradehouse personnel data"			= /obj/item/documents/tradehouse/personnel,
		"the Captain's spare ID"				= /obj/item/card/id/captains_spare,
		"the ship's blueprints"					= /obj/item/blueprints,
		"the Matriarch's robes"					= /obj/item/clothing/under/yinglet/matriarch,
		"a jetpack"								= /obj/item/tank/jetpack/,
		"a pump action shotgun"					= /obj/item/gun/projectile/shotgun/pump/,
		"a health analyzer"						= /obj/item/scanner/health,
		"the integrated circuit printer"		= /obj/item/integrated_circuit_printer,
		"a whole uneaten mollusc"				= /obj/item/mollusc
	)

/datum/map/shelltooth/get_map_info()
	return "You're aboard the <b>[station_name],</b> a scav space station. This message isn't written yet."

/datum/map/shelltooth/setup_map()
	..()
	SStrade.traders += new /datum/trader/xeno_shop
	SStrade.traders += new /datum/trader/medical
	SStrade.traders += new /datum/trader/mining
