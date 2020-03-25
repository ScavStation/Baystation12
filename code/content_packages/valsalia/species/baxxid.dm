/datum/species/baxxid
	name = SPECIES_BAXXID
	name_plural = SPECIES_BAXXID
	icobase =         'code/content_packages/valsalia/icons/species/baxxid/body.dmi'
	deform =          'code/content_packages/valsalia/icons/species/baxxid/deformed_body.dmi'
	preview_icon =    'code/content_packages/valsalia/icons/species/baxxid/preview.dmi'
	damage_overlays = 'code/content_packages/valsalia/icons/species/baxxid/damage_overlay.dmi'
	damage_mask =     'code/content_packages/valsalia/icons/species/baxxid/damage_mask.dmi'
	blood_mask =      'code/content_packages/valsalia/icons/species/baxxid/blood_mask.dmi'
	icon_template =   'code/content_packages/valsalia/icons/species/baxxid/template.dmi'

	manual_dexterity = DEXTERITY_KEYBOARDS
	mob_size = MOB_SIZE_LARGE

	unarmed_attacks = list(
		/decl/natural_attack/claws/strong/baxxid,
		/decl/natural_attack/bite/strong
	)

	hud_type = /datum/hud_data/baxxid
	limb_blend = ICON_MULTIPLY
	species_flags = SPECIES_FLAG_NO_MINOR_CUT | SPECIES_FLAG_NO_SLIP
	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_COLOR | HAS_EYE_COLOR
	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes/baxxid
		)

	available_cultural_info = list(
		TAG_CULTURE =   list(CULTURE_BAXXID, CULTURE_OTHER),
		TAG_HOMEWORLD = list(HOME_SYSTEM_STATELESS),
		TAG_FACTION =   list(FACTION_BAXXID, FACTION_OTHER),
		TAG_RELIGION =  list(RELIGION_OTHER, RELIGION_ATHEISM, RELIGION_AGNOSTICISM)
	)

/datum/species/baxxid/handle_autohiss(message, datum/language/lang, mode)
	if(autohiss_exempt && (lang.name in autohiss_exempt))
		return message
	. = message
	if(!istype(lang, /datum/language/baxxid))
		var/hnnn = "H"
		for(var/i = 1 to rand(3,5))
			hnnn += "n"
		var/first_char = copytext(message, 1, 1)
		if(first_char != lowertext(first_char))
			hnnn = uppertext(capitalize(hnnn))
		. = "[hnnn][uppertext(.)]"


/obj/item/organ/internal/eyes/baxxid
	eye_icon = 'code/content_packages/valsalia/icons/species/baxxid/eyes.dmi'

/datum/sprite_accessory/marking/baxxid
	name = "Crest"
	body_parts = list(BP_HEAD)
	species_allowed = list(SPECIES_BAXXID)
	icon = 'code/content_packages/valsalia/icons/species/baxxid/markings.dmi'
	icon_state = "crest"
	blend = ICON_MULTIPLY

/datum/sprite_accessory/marking/baxxid/plates
	name = "Armour Plates"
	body_parts = list(BP_CHEST, BP_GROIN)
	icon_state = "plates"

/datum/sprite_accessory/marking/baxxid/bones
	name = "Bony Segments"
	body_parts = list(BP_CHEST, BP_GROIN, BP_HEAD, BP_L_ARM, BP_R_ARM, BP_L_HAND, BP_R_HAND, BP_L_LEG, BP_R_LEG, BP_R_FOOT, BP_L_FOOT)
	icon_state = "bones"

/datum/hud_data/baxxid
	has_hands = FALSE
	gear = list(
		"id" =           list("loc" = ui_id,                "name" = "ID",   "slot" = slot_wear_id,   "state" = "id"),
		"back" =         list("loc" = ui_sstore1,           "name" = "Back", "slot" = slot_back,      "state" = "back"),
		"o_clothing" =   list("loc" = ui_iclothing,         "name" = "Suit", "slot" = slot_wear_suit, "state" = "suit", "toggle" = 1),
		"head" =         list("loc" = "LEFT:6,BOTTOM+3:11", "name" = "Hat",  "slot" = slot_head,      "state" = "hair", "toggle" = 1),
		"mask" =         list("loc" = ui_glasses,           "name" = "Mask", "slot" = slot_wear_mask, "state" = "mask", "toggle" = 1)
		)

/decl/natural_attack/claws/strong/baxxid
	attack_verb = list("stabbed", "maimed", "impaled")
	damage = 12
	sharp = 1
	edge = 1
	delay = 15
	eye_attack_text = "an enormous forelimb"
	eye_attack_text_victim = "an enormous forelimb"
	attack_name = "forelimb stab"

