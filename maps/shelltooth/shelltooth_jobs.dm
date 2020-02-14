/datum/map/tradeship
	default_assistant_title = "Deck Hand"
	allowed_jobs = list(
		/datum/job/captain,
		/datum/job/chief_engineer,
		/datum/job/doctor,
		/datum/job/rd,
		/datum/job/hop,
		/datum/job/cyborg,
		/datum/job/assistant,
		/datum/job/engineer,
		/datum/job/doctor/junior,
		/datum/job/scientist,
		/datum/job/yinglet,
		/datum/job/yinglet/scout,
		/datum/job/yinglet/patriarch,
		/datum/job/yinglet/matriarch
		//datum/job/baxxid_advisor
	)
	species_to_job_whitelist = list(
		/datum/species/baxxid = list(
			/datum/job/assistant
		//	/datum/job/baxxid_advisor
		),
		/datum/species/yinglet = list(
			/datum/job/yinglet,
			/datum/job/yinglet/scout,
			/datum/job/yinglet/patriarch,
			/datum/job/yinglet/matriarch,
			/datum/job/assistant,
			/datum/job/engineer,
			/datum/job/cyborg,
			/datum/job/doctor/junior,
			/datum/job/scientist
		),
		/datum/species/yinglet/southern = list(
			/datum/job/yinglet,
			/datum/job/yinglet/scout,
			/datum/job/yinglet/patriarch,
			/datum/job/yinglet/matriarch,
			/datum/job/assistant,
			/datum/job/engineer,
			/datum/job/cyborg,
			/datum/job/doctor/junior,
			/datum/job/scientist
		)
	)

/datum/job/captain
	supervisors = "your profit margin, your conscience, and the Trademaster"
	outfit_type = /decl/hierarchy/outfit/job/tradeship/captain
	min_skill = list(   SKILL_WEAPONS = SKILL_ADEPT,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)
	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX)
	skill_points = 30

/datum/job/captain/get_access()
	return get_all_station_access()

/datum/job/chief_engineer
	title = "Head Engineer"
	supervisors = "the Captain"
	department_flag = ENG
	outfit_type = /decl/hierarchy/outfit/job/tradeship/chief_engineer
	min_skill = list(   SKILL_BUREAUCRACY  = SKILL_BASIC,
	                    SKILL_COMPUTER     = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_EXPERT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 30
	alt_titles = list()

/datum/job/doctor
	title = "Head Doctor"
	supervisors = "the Captain and your own ethics"
	outfit_type = /decl/hierarchy/outfit/job/tradeship/doc
	alt_titles = list(
		"Surgeon")
	total_positions = 1
	spawn_positions = 1
	hud_icon = "hudmedicaldoctor"
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 28

/datum/job/doctor/junior
	title = "Junior Doctor"
	supervisors = "the Head Doctor and the Captain"
	total_positions = 2
	spawn_positions = 2
	alt_titles = list()
	skill_points = 24

/datum/job/hop
	title = "First Mate"
	supervisors = "the Captain"
	outfit_type = /decl/hierarchy/outfit/job/tradeship/mate
	hud_icon = "hudheadofpersonnel"
	min_skill = list(   SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_EXPERT,
	                    SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_FINANCE     = SKILL_MAX,
	                    SKILL_BUREAUCRACY = SKILL_ADEPT)
	skill_points = 30
	alt_titles = list()

/datum/job/assistant
	title = "Deck Hand"
	supervisors = "literally everyone, you bottom feeder"
	outfit_type = /decl/hierarchy/outfit/job/tradeship/hand
	alt_titles = list(
		"Cook" = /decl/hierarchy/outfit/job/tradeship/hand/cook,
		"Cargo Hand",
		"Passenger")
	hud_icon = "hudcargotechnician"

/datum/job/engineer
	title = "Junior Engineer"
	supervisors = "the Head Engineer"
	total_positions = 2
	spawn_positions = 2
	hud_icon = "hudengineer"
	outfit_type = /decl/hierarchy/outfit/job/tradeship/hand/engine
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_BASIC,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_BASIC,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 20
	alt_titles = list()

/datum/job/cyborg
	supervisors = "your laws and the Captain"
	total_positions = 1
	spawn_positions = 1
	alt_titles = list()

/datum/job/rd
	title = "Head Researcher"
	supervisors = "the Captain"
	spawn_positions = 1
	total_positions = 1
	alt_titles = list()
	outfit_type = /decl/hierarchy/outfit/job/tradeship/hand/researcher
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_ADEPT,
	                    SKILL_BOTANY      = SKILL_BASIC,
	                    SKILL_ANATOMY     = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

/datum/job/scientist
	title = "Junior Researcher"
	supervisors = "the Head Researcher and the Captain"
	spawn_positions = 1
	total_positions = 2
	alt_titles = list()
	outfit_type = /decl/hierarchy/outfit/job/tradeship/hand/researcher/junior
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 24

/datum/job/yinglet
	title = "Enclave Worker"
	spawn_positions = 2
	total_positions = 4
	hud_icon = "hudying"
	supervisors = "the Matriarch and the Patriarches"
	outfit_type = /decl/hierarchy/outfit/job/yinglet
	department_flag = CIV
	var/required_gender

/datum/job/yinglet/is_species_allowed(var/datum/species/S)
	if(S && !istype(S))
		S = all_species[S]
	. = istype(S) && (S.name == SPECIES_YINGLET || S.name == SPECIES_YINGLET_SOUTHERN)

/datum/job/yinglet/check_special_blockers(var/datum/preferences/prefs)
	if(required_gender && prefs.gender != required_gender)
		. = "[required_gender] only"

/datum/job/yinglet/scout
	title = "Enclave Scout"
	spawn_positions = 1
	total_positions = 3
	department_flag = EXP
	hud_icon = "hudyingscout"
	supervisors = "the Matriarch and the Patriarches"
	outfit_type = /decl/hierarchy/outfit/job/yinglet/scout
	access = list(access_eva, access_research)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_ADEPT,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
	                    SKILL_COMBAT      = SKILL_EXPERT,
	                    SKILL_WEAPONS     = SKILL_EXPERT)
	skill_points = 22

/datum/job/yinglet/patriarch
	title = "Enclave Patriarch"
	hud_icon = "hudyingpatriarch"
	spawn_positions = 2
	total_positions = 3
	supervisors = "the Matriarch"
	required_gender = MALE
	outfit_type = /decl/hierarchy/outfit/job/yinglet/patriarch
	min_skill = list(   SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_EXPERT,
	                    SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT,
						SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_BASIC,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_FINANCE     = SKILL_MAX,
	                    SKILL_BUREAUCRACY = SKILL_ADEPT,
						SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 26
	head_position = 1
	department_flag = COM|CIV
	access = list(
		access_heads, access_medical, access_engine, access_change_ids, access_eva, access_bridge,
		access_maint_tunnels, access_bar, access_janitor, access_cargo, access_cargo_bot, access_research, access_heads_vault,
		access_hop, access_RC_announce, access_keycard_auth)
	minimal_access = list(
		access_heads, access_medical, access_engine, access_change_ids, access_eva, access_bridge,
		access_maint_tunnels, access_bar, access_janitor, access_cargo, access_cargo_bot, access_research, access_heads_vault,
		access_hop, access_RC_announce, access_keycard_auth)


/datum/job/yinglet/matriarch
	title = "Enclave Matriarch"
	hud_icon = "hudyingmatriarch"
	spawn_positions = 1
	total_positions = 1
	required_gender = FEMALE
	supervisors = "your own wishes, and maybe the Captain"
	outfit_type = /decl/hierarchy/outfit/job/yinglet/matriarch
	min_skill = list(   SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_EXPERT,
	                    SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT,
						SKILL_MEDICAL     = SKILL_ADEPT
						)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_FINANCE     = SKILL_MAX,
	                    SKILL_BUREAUCRACY = SKILL_ADEPT,
						SKILL_MEDICAL     = SKILL_MAX,
						SKILL_ANATOMY     = SKILL_EXPERT
						)
	skill_points = 30
	head_position = 1
	department_flag = COM|CIV
	selection_color = "#2f2f7f"
	req_admin_notify = 1
	access = list(
		access_heads, access_medical, access_engine, access_change_ids, access_eva, access_bridge,
		access_maint_tunnels, access_bar, access_janitor, access_cargo, access_cargo_bot, access_research, access_heads_vault,
		access_hop, access_RC_announce, access_keycard_auth)
	minimal_access = list(
		access_heads, access_medical, access_engine, access_change_ids, access_eva, access_bridge,
		access_maint_tunnels, access_bar, access_janitor, access_cargo, access_cargo_bot, access_research, access_heads_vault,
		access_hop, access_RC_announce, access_keycard_auth)

/*
/datum/job/baxxid_advisor
	title = "Baxxid Advisor"
	skill_points = 40
	supervisors = "the elders of your family, the Captain and the Trademaster"
	department_flag = COM|CIV
	total_positions = 1
	spawn_positions = 1

/datum/job/baxxid_advisor/is_species_allowed(var/datum/species/S)
	if(S && !istype(S))
		S = all_species[S]
	. = istype(S) && S.name == SPECIES_BAXXID
*/

// OUTFITS
#define TRADESHIP_OUTFIT_JOB_NAME(job_name) ("Tradeship - Job - " + job_name)

/decl/hierarchy/outfit/job/tradeship
	hierarchy_type = /decl/hierarchy/outfit/job/tradeship
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	suit = /obj/item/clothing/suit/storage/toggle/redcoat
	l_ear = null
	r_ear = null
	var/yinglet_suit_fallback = /obj/item/clothing/suit/storage/toggle/redcoat/yinglet

/decl/hierarchy/outfit/job/tradeship/proc/try_give_yinglet_fallbacks(var/mob/living/carbon/human/H)
	if(!H || H.species.get_bodytype(H) != SPECIES_YINGLET)
		return
	if(shoes && !H.shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal/yinglet(H), slot_shoes)
	if(uniform && !H.w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/yinglet(H), slot_w_uniform)
	if(suit && !H.wear_suit && yinglet_suit_fallback)
		H.equip_to_slot_or_del(new yinglet_suit_fallback(H), slot_wear_suit)

/decl/hierarchy/outfit/job/tradeship/equip(mob/living/carbon/human/H, rank, assignment, equip_adjustments)
	try_give_yinglet_fallbacks(H)
	. = ..()
	try_give_yinglet_fallbacks(H)

/decl/hierarchy/outfit/job/tradeship/captain
	name = TRADESHIP_OUTFIT_JOB_NAME("Captain")
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/captain
	r_pocket = /obj/item/radio
	id_type = /obj/item/card/id/gold
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/officer

/decl/hierarchy/outfit/job/tradeship/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

/decl/hierarchy/outfit/job/tradeship/chief_engineer
	name = TRADESHIP_OUTFIT_JOB_NAME("Head Engineer")
	uniform = /obj/item/clothing/under/rank/chief_engineer
	glasses = /obj/item/clothing/glasses/welding/superior
	suit = /obj/item/clothing/suit/storage/hazardvest
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/workboots
	pda_type = /obj/item/modular_computer/pda/heads/ce
	l_hand = /obj/item/wrench
	belt = /obj/item/storage/belt/utility/full
	id_type = /obj/item/card/id/engineering/head
	r_pocket = /obj/item/radio
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/service/officiated

/decl/hierarchy/outfit/job/tradeship/doc
	name = TRADESHIP_OUTFIT_JOB_NAME("Head Doctor")
	uniform = /obj/item/clothing/under/det/black
	shoes = /obj/item/clothing/shoes/laceup
	pda_type = /obj/item/modular_computer/pda/medical
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/service/officiated
	id_type = /obj/item/card/id/medical

/decl/hierarchy/outfit/job/tradeship/doc/junior
	name = TRADESHIP_OUTFIT_JOB_NAME("Junior Doctor")
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/service

/decl/hierarchy/outfit/job/tradeship/mate
	name = TRADESHIP_OUTFIT_JOB_NAME("First Mate")
	uniform = /obj/item/clothing/under/suit_jacket/checkered
	shoes = /obj/item/clothing/shoes/laceup
	glasses = /obj/item/clothing/glasses/sunglasses/big
	pda_type = /obj/item/modular_computer/pda/cargo
	l_hand = /obj/item/material/clipboard
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/officiated
	id_type = /obj/item/card/id/silver
	pda_type = /obj/item/modular_computer/pda/heads/hop

/decl/hierarchy/outfit/job/tradeship/hand
	name = TRADESHIP_OUTFIT_JOB_NAME("Deck Hand")

/decl/hierarchy/outfit/job/tradeship/hand/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(list(/obj/item/clothing/under/overalls,/obj/item/clothing/under/focal,/obj/item/clothing/under/hazard,/obj/item/clothing/under/rank/cargotech,/obj/item/clothing/under/color/black,/obj/item/clothing/under/color/grey,/obj/item/clothing/under/casual_pants/track, ))

/decl/hierarchy/outfit/job/tradeship/hand/cook
	name = TRADESHIP_OUTFIT_JOB_NAME("Cook")
	head = /obj/item/clothing/head/chefhat
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/service

/decl/hierarchy/outfit/job/tradeship/hand/engine
	name = TRADESHIP_OUTFIT_JOB_NAME("Junior Engineer")
	head = /obj/item/clothing/head/hardhat
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/service
	id_type = /obj/item/card/id/engineering
	shoes = /obj/item/clothing/shoes/workboots
	l_hand = /obj/item/wrench
	belt = /obj/item/storage/belt/utility/full
	r_pocket = /obj/item/radio

/decl/hierarchy/outfit/job/tradeship/hand/researcher
	name = TRADESHIP_OUTFIT_JOB_NAME("Head Researcher")
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/service/officiated
	shoes = /obj/item/clothing/shoes/laceup
	pda_type = /obj/item/modular_computer/pda/science
	id_type = /obj/item/card/id/science/head

/decl/hierarchy/outfit/job/tradeship/hand/researcher/junior
	name = TRADESHIP_OUTFIT_JOB_NAME("Junior Researcher")
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/service
	id_type = /obj/item/card/id/science

/decl/hierarchy/outfit/job/yinglet
	name = TRADESHIP_OUTFIT_JOB_NAME("Enclave Worker")
	uniform = /obj/item/clothing/under/yinglet
	shoes = /obj/item/clothing/shoes/sandal/yinglet
	id_type = /obj/item/card/id
	pda_type = /obj/item/modular_computer/pda
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/yinglet/scout
	name = TRADESHIP_OUTFIT_JOB_NAME("Enclave Scout")
	uniform = /obj/item/clothing/under/yinglet/scout
	head = /obj/item/clothing/head/yinglet/scout

/decl/hierarchy/outfit/job/yinglet/patriarch
	name = TRADESHIP_OUTFIT_JOB_NAME("Enclave Patriarch")
	suit = /obj/item/clothing/suit/yinglet
	id_type = /obj/item/card/id/silver
	pda_type = /obj/item/modular_computer/pda/heads

/decl/hierarchy/outfit/job/yinglet/matriarch
	name = TRADESHIP_OUTFIT_JOB_NAME("Enclave Matriarch")
	uniform = /obj/item/clothing/under/yinglet/matriarch
	head = /obj/item/clothing/head/yinglet/matriarch
	id_type = /obj/item/card/id/silver
	pda_type = /obj/item/modular_computer/pda/heads
