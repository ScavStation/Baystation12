/obj/item/clothing/suit/space/void/scav
	name = "small voidsuit"
	desc = "A compact, lightly armoured voidsuit for a nonhuman with a tail."
	icon_state = ICON_STATE_WORLD
	icon = 'mods/valsalia/icons/clothing/suit/voidsuit_yinglet.dmi'
	bodytype_restricted = list(BODYTYPE_YINGLET)
	color = COLOR_BRONZE
	var/armour_colour = COLOR_BEIGE
	var/stripe_colour

/obj/item/clothing/suit/space/void/scav/get_mob_overlay(mob/user_mob, slot)
	var/image/ret = ..()
	if(slot == slot_wear_suit_str)
		var/image/I = image(ret.icon, "[ret.icon_state]-armour")
		I.appearance_flags |= RESET_COLOR
		I.color = armour_colour
		ret.overlays += I
		if(stripe_colour)
			I = image(ret.icon, "[ret.icon_state]-stripe")
			I.appearance_flags |= RESET_COLOR
			I.color = stripe_colour
			ret.overlays += I
	return ret

/obj/item/clothing/suit/space/void/scav/on_update_icon(mob/user)
	update_world_inventory_state()
	cut_overlays()
	var/image/I = image(icon, "[icon_state]-armour")
	I.appearance_flags |= RESET_COLOR
	I.color = armour_colour
	add_overlay(I)
	if(stripe_colour)
		I = image(icon, "[icon_state]-stripe")
		I.appearance_flags |= RESET_COLOR
		I.color = stripe_colour
		add_overlay(I)

/obj/item/clothing/head/helmet/space/void/scav
	name = "small voidsuit helmet"
	desc = "A compact, lightly armoured voidsuit helmet for a nonhuman with large ears and a long nose."
	icon_state = ICON_STATE_WORLD
	icon = 'mods/valsalia/icons/clothing/head/voidsuit_helmet_yinglet.dmi'
	bodytype_restricted = list(BODYTYPE_YINGLET)
	color = COLOR_BRONZE
	var/faceplate_colour = COLOR_SKY_BLUE
	var/armour_colour = COLOR_BEIGE
	var/stripe_colour

/obj/item/clothing/head/helmet/space/void/scav/get_mob_overlay(mob/user_mob, slot)
	var/image/ret = ..()
	if(slot == slot_head_str)
		var/new_overlays = list()
		var/image/I = image(ret.icon, "[ret.icon_state]-faceplate")
		I.appearance_flags |= RESET_COLOR
		I.color = faceplate_colour
		new_overlays += I
		I = image(ret.icon, "[ret.icon_state]-armour")
		I.appearance_flags |= RESET_COLOR
		I.color = armour_colour
		new_overlays += I
		if(stripe_colour)
			I = image(ret.icon, "[ret.icon_state]-stripe")
			I.appearance_flags |= RESET_COLOR
			I.color = stripe_colour
			new_overlays += I
		ret.overlays = new_overlays
	return ret

/obj/item/clothing/head/helmet/space/void/scav/on_update_icon(mob/user)
	update_world_inventory_state()
	cut_overlays()
	var/image/I = image(icon, "[icon_state]-faceplate")
	I.appearance_flags |= RESET_COLOR
	I.color = faceplate_colour
	add_overlay(I)
	I = image(icon, "[icon_state]-armour")
	I.appearance_flags |= RESET_COLOR
	I.color = armour_colour
	add_overlay(I)
	if(stripe_colour)
		I = image(icon, "[icon_state]-stripe")
		I.appearance_flags |= RESET_COLOR
		I.color = stripe_colour
		add_overlay(I)

/obj/item/clothing/suit/space/void/scav/engineering
	name = "small engineering voidsuit"
	color = COLOR_GRAY40
	armour_colour = COLOR_YELLOW_GRAY
	stripe_colour = COLOR_BEASTY_BROWN

/obj/item/clothing/head/helmet/space/void/scav/engineering
	name = "small engineering voidsuit helmet"
	color = COLOR_GRAY40
	faceplate_colour = COLOR_SKY_BLUE
	armour_colour = COLOR_YELLOW_GRAY
	stripe_colour = COLOR_BEASTY_BROWN

/obj/item/clothing/suit/space/void/scav/security
	name = "small security voidsuit"
	color = COLOR_GRAY20
	armour_colour = COLOR_GRAY40
	stripe_colour = COLOR_DARK_RED
	
/obj/item/clothing/head/helmet/space/void/scav/security
	name = "small security voidsuit helmet"
	color = COLOR_GRAY20
	armour_colour = COLOR_GRAY40
	faceplate_colour = COLOR_RED_GRAY
	stripe_colour = COLOR_DARK_RED

/obj/item/clothing/suit/space/void/scav/merc
	name = "small blood-red voidsuit"
	color = COLOR_GRAY40
	armour_colour = COLOR_RED
	
/obj/item/clothing/head/helmet/space/void/scav/merc
	name = "small blood-red voidsuit helmet"
	color = COLOR_GRAY40
	armour_colour = COLOR_RED
	faceplate_colour = COLOR_LIME

/obj/item/clothing/suit/space/void/scav/medical
	name = "small medical voidsuit"
	color = COLOR_GRAY40
	armour_colour = COLOR_OFF_WHITE
	stripe_colour = COLOR_CYAN_BLUE
	
/obj/item/clothing/head/helmet/space/void/scav/medical
	name = "small medical voidsuit helmet"
	color = COLOR_GRAY20
	armour_colour = COLOR_OFF_WHITE
	stripe_colour = COLOR_CYAN_BLUE
	faceplate_colour = COLOR_SKY_BLUE

/obj/item/clothing/suit/space/void/scav/explorer
	name = "small exploration voidsuit"
	color = COLOR_GRAY20
	armour_colour = COLOR_GRAY40
	stripe_colour = COLOR_PURPLE
	
/obj/item/clothing/head/helmet/space/void/scav/explorer
	name = "small exploration voidsuit helmet"
	color = COLOR_GRAY20
	armour_colour = COLOR_GRAY40
	faceplate_colour = COLOR_PALE_PURPLE_GRAY
	stripe_colour = COLOR_PURPLE
