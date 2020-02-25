/obj/item/clothing/gloves
	sprite_sheets = list(SPECIES_YINGLET = 'maps/tradeship/icons/onmob_hands_yinglet.dmi')
	species_restricted = list(SPECIES_HUMAN, SPECIES_YINGLET)

/obj/item/clothing/ears
	species_restricted = list(SPECIES_HUMAN, SPECIES_YINGLET)

/obj/item/clothing/glasses
	species_restricted = list(SPECIES_HUMAN, SPECIES_YINGLET)

/obj/item/clothing/head
	species_restricted = list(SPECIES_HUMAN, SPECIES_YINGLET)

/obj/item/clothing/suit
	species_restricted = list(SPECIES_HUMAN, SPECIES_YINGLET)

/obj/item/clothing/mask
	species_restricted = list(SPECIES_HUMAN, SPECIES_YINGLET)

/obj/item/clothing/under/tradeship_plain
	name = "plain clothes"
	desc = "Some very boring clothes."
	icon = 'maps/tradeship/icons/under.dmi'
	icon_state = "plainclothes"
	species_restricted = list(SPECIES_HUMAN)
	item_icons = list(
		slot_w_uniform_str = 'maps/tradeship/icons/onmob_under.dmi'
	)

/obj/item/clothing/suit/storage/toggle/redcoat
	name = "\improper Tradehouse redcoat"
	desc = "The signature uniform of Tradeshouse guardsmen."
	icon = 'maps/tradeship/icons/suit.dmi'
	icon_state = "redcoat"
	item_icons = list(
		slot_wear_suit_str = 'maps/tradeship/icons/onmob_suit.dmi'
	)
	icon_open = "redcoat_open"
	icon_closed = "redcoat"
	species_restricted = list(SPECIES_HUMAN)
	sprite_sheets = list(SPECIES_YINGLET = 'maps/tradeship/icons/onmob_suit_yinglet.dmi')

	var/has_badge
	var/has_buttons
	var/has_collar
	var/has_buckle

/obj/item/clothing/suit/storage/toggle/redcoat/Initialize()
	update_icon()
	. = ..()

/obj/item/clothing/suit/storage/toggle/redcoat/examine(var/mob/user, var/distance)
	. = ..()
	if(has_badge)
		to_chat(user, "This one has a badge sewn to the front indicating the wearer is recognized by the Tradehouse.")

/obj/item/clothing/suit/storage/toggle/redcoat/proc/collect_overlays(var/from_icon)
	var/list/adding_overlays
	var/state_modifier = (icon_state == icon_open) ? "_open" : ""
	if(has_badge)
		LAZYADD(adding_overlays, image(icon = from_icon, icon_state = "[has_badge][state_modifier]"))
	if(has_buttons)
		LAZYADD(adding_overlays, image(icon = from_icon, icon_state = "[has_buttons][state_modifier]"))
	if(has_collar)
		LAZYADD(adding_overlays, image(icon = from_icon, icon_state = "[has_collar][state_modifier]"))
	if(has_buckle)
		LAZYADD(adding_overlays, image(icon = from_icon, icon_state = "[has_buckle][state_modifier]"))
	. = adding_overlays

/obj/item/clothing/suit/storage/toggle/redcoat/on_update_icon()
	overlays = collect_overlays(icon)

/obj/item/clothing/suit/storage/toggle/redcoat/get_mob_overlay(var/mob/user_mob, var/slot)
	var/image/ret = ..()
	if(item_icons[slot])
		ret.overlays += collect_overlays(item_icons[slot])
	return ret

/obj/item/clothing/suit/storage/toggle/redcoat/service
	name = "\improper Tradehouse service coat"
	desc = "The brown-collared uniform of Tradehouse service staff."
	has_collar = "collar_brown"

/obj/item/clothing/suit/storage/toggle/redcoat/service/officiated
	has_badge = "badge"

/obj/item/clothing/suit/storage/toggle/redcoat/officiated
	has_badge = "badge"

/obj/item/clothing/suit/storage/toggle/redcoat/officer
	name = "\improper Tradehouse officer's coat"
	desc = "The striking uniform of a Tradehouse guard officer, complete with gold collar and buttons."
	has_badge =   "badge"
	has_buttons = "buttons_gold"
	has_collar =  "collar_gold"
	has_buckle =  "buckle_gold"
