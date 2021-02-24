/obj/item/teleportation_scroll
	name = "scroll of teleportation"
	desc = "A scroll for moving around."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "scroll"
	var/uses = 4.0
	w_class = ITEM_SIZE_TINY
	item_state = "paper"
	throw_speed = 4
	throw_range = 20
	origin_tech = "{'wormholes':4}"

/obj/item/teleportation_scroll/attack_self(mob/user)
	var/decl/special_role/wizard/wizards = GET_DECL(/decl/special_role/wizard)
	if((user.mind && !wizards.is_antagonist(user.mind)))
		to_chat(usr, "<span class='warning'>You stare at the scroll but cannot make sense of the markings!</span>")
		return

	user.set_machine(src)
	var/dat = "<B>Teleportation Scroll:</B><BR>"
	dat += "Number of uses: [src.uses]<BR>"
	dat += "<HR>"
	dat += "<B>Four uses use them wisely:</B><BR>"
	dat += "<A href='byond://?src=\ref[src];spell_teleport=1'>Teleport</A><BR>"
	dat += "Kind regards,<br>Wizards Federation<br><br>P.S. Don't forget to bring your gear, you'll need it to cast most spells.<HR>"
	show_browser(user, dat, "window=scroll")
	onclose(user, "scroll")
	return

/obj/item/teleportation_scroll/Topic(href, href_list)
	if(..())
		return 1
	var/mob/living/carbon/human/H = usr
	if (!( istype(H, /mob/living/carbon/human)))
		return 1
	if ((usr == src.loc || (in_range(src, usr) && istype(src.loc, /turf))))
		usr.set_machine(src)
		if (href_list["spell_teleport"])
			if (src.uses >= 1)
				teleportscroll(H)
	attack_self(H)
	return

/obj/item/teleportation_scroll/proc/teleportscroll(var/mob/user)
	var/area/thearea = input(user, "Area to jump to", "BOOYEA") as null|anything in wizteleportlocs
	thearea = thearea ? wizteleportlocs[thearea] : thearea

	if (!thearea || CanUseTopic(user) != STATUS_INTERACTIVE)
		return

	var/datum/effect/effect/system/smoke_spread/smoke = new /datum/effect/effect/system/smoke_spread()
	smoke.set_up(5, 0, user.loc)
	smoke.attach(user)
	smoke.start()
	var/turf/end = user.try_teleport(thearea)

	if(!end)
		to_chat(user, "The spell matrix was unable to locate a suitable teleport destination for an unknown reason. Sorry.")
		return
	smoke.start()
	src.uses -= 1
