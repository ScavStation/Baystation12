/datum/design/item/mechfab/prosthetic_organ/Fabricate()
	var/obj/item/organ/internal/I = ..()
	if(istype(I))
		I.robotize()

/datum/design/item/mechfab/prosthetic_organ
	category = "Prosthetic Organs"

/datum/design/item/mechfab/prosthetic_organ/AssembleDesignName()
	name = "prosthetic organ ([item_name])"

/datum/design/item/mechfab/prosthetic_organ/stomach
	name = "stomach"
	desc = "A prosthetic stomach."
	id = "prostheticstomach"
	req_tech = list(TECH_MATERIAL = 2)
	materials = list(MAT_STEEL = 3000)
	build_path = /obj/item/organ/internal/stomach

/datum/design/item/mechfab/prosthetic_organ/heart
	name = "heart"
	desc = "A prosthetic heart."
	id = "prostheticheart"
	req_tech = list(TECH_MATERIAL = 2)
	materials = list(MAT_STEEL = 3000)
	build_path = /obj/item/organ/internal/heart

/datum/design/item/mechfab/prosthetic_organ/liver
	name = "liver"
	desc = "A prosthetic liver."
	id = "prostheticliver"
	req_tech = list(TECH_MATERIAL = 2)
	materials = list(MAT_STEEL = 3000)
	build_path = /obj/item/organ/internal/liver

/datum/design/item/mechfab/prosthetic_organ/kidneys
	name = "kidneys"
	desc = "A prosthetic pair of kidneys."
	id = "prosthetickidneys"
	req_tech = list(TECH_MATERIAL = 2)
	materials = list(MAT_STEEL = 3000)
	build_path = /obj/item/organ/internal/kidneys

/datum/design/item/mechfab/prosthetic_organ/lungs
	name = "lungs"
	desc = "A prosthetic pair of lungs."
	id = "prostheticlungs"
	req_tech = list(TECH_MATERIAL = 2)
	materials = list(MAT_STEEL = 3000)
	build_path = /obj/item/organ/internal/lungs

/datum/design/item/mechfab/prosthetic_organ/eyes
	name = "eyes"
	desc = "A prosthetic pair of eyes."
	id = "prostheticeyes"
	req_tech = list(TECH_MATERIAL = 2)
	materials = list(MAT_STEEL = 3000)
	build_path = /obj/item/organ/internal/eyes