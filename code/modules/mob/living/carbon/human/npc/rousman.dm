GLOBAL_LIST_EMPTY(rousman_ambush_objects)

/mob/living/carbon/human/species/rousman
	name = "rousman"
	icon = 'icons/roguetown/mob/monster/rousman.dmi'
	icon_state = "rousman"
	race = /datum/species/rousman
	gender = MALE
	bodyparts = list(/obj/item/bodypart/chest/rousman, /obj/item/bodypart/head/rousman, /obj/item/bodypart/l_arm/rousman,
					/obj/item/bodypart/r_arm/rousman, /obj/item/bodypart/r_leg/rousman, /obj/item/bodypart/l_leg/rousman)
	rot_type = /datum/component/rot/corpse/rousman
	ambushable = FALSE
	base_intents = list(INTENT_STEAL, INTENT_HELP, INTENT_DISARM, /datum/intent/unarmed/claw, /datum/intent/simple/bite, /datum/intent/jump)
	possible_rmb_intents = list()
	vitae_pool = 200

/mob/living/carbon/human/species/rousman/Initialize()
	. = ..()
	update_appearance(UPDATE_OVERLAYS)

/mob/living/carbon/human/species/rousman/death(gibbed)
	. = ..()
	update_appearance(UPDATE_OVERLAYS)

/mob/living/carbon/human/species/rousman/update_overlays()
	. = ..()
	if(stat == DEAD)
		return
	. += emissive_appearance('icons/roguetown/mob/monster/rousman.dmi', "rousman_eyes", alpha = src.alpha)

/mob/living/carbon/human/species/rousman/npc
	ai_controller = /datum/ai_controller/human_npc
	dodgetime = 13
	canparry = TRUE
	flee_in_pain = TRUE
	wander = FALSE

/mob/living/carbon/human/species/rousman/npc/Initialize()
	. = ..()
	AddComponent(/datum/component/ai_aggro_system)
	AddComponent(/datum/component/combat_noise, list("scream" = 5, "laugh" = 1))

/mob/living/carbon/human/species/rousman/ambush
	ai_controller = /datum/ai_controller/human_npc

/mob/living/carbon/human/species/rousman/ambush/after_creation()
	. = ..()
	AddComponent(/datum/component/ai_aggro_system)
	job = "Ambusher Rousman"
	ADD_TRAIT(src, TRAIT_NOMOOD, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_NOHUNGER, TRAIT_GENERIC)
	equipOutfit(new /datum/outfit/job/npc/rousman/ambush)
	dodgetime = 13
	canparry = TRUE
	flee_in_pain = TRUE
	wander = TRUE

/////////////////////////////////////////////////////////////////////////////
/obj/item/bodypart/chest/rousman
	dismemberable = 1
	icon = 'icons/roguetown/mob/monster/rousman.dmi'
	icon_state = "rousman_chest"
/obj/item/bodypart/chest/rousman/update_icon_dropped()
	return
/obj/item/bodypart/chest/rousman/get_limb_icon(dropped, hideaux = FALSE)
	return

/obj/item/bodypart/l_arm/rousman
	dismemberable = 1
	icon = 'icons/roguetown/mob/monster/rousman.dmi'
	icon_state = "rousman_l_arm"
/obj/item/bodypart/l_arm/rousman/update_icon_dropped()
	return
/obj/item/bodypart/l_arm/rousman/get_limb_icon(dropped, hideaux = FALSE)
	return

/obj/item/bodypart/r_arm/rousman
	dismemberable = 1
	icon = 'icons/roguetown/mob/monster/rousman.dmi'
	icon_state = "rousman_r_arm"
/obj/item/bodypart/r_arm/rousman/update_icon_dropped()
	return
/obj/item/bodypart/r_arm/rousman/get_limb_icon(dropped, hideaux = FALSE)
	return

/obj/item/bodypart/r_leg/rousman
	dismemberable = 1
	icon = 'icons/roguetown/mob/monster/rousman.dmi'
	icon_state = "rousman_r_leg"
/obj/item/bodypart/r_leg/rousman/update_icon_dropped()
	return
/obj/item/bodypart/r_leg/rousman/get_limb_icon(dropped, hideaux = FALSE)
	return

/obj/item/bodypart/l_leg/rousman
	dismemberable = 1
	icon = 'icons/roguetown/mob/monster/rousman.dmi'
	icon_state = "rousman_l_leg"
/obj/item/bodypart/l_leg/rousman/update_icon_dropped()
	return
/obj/item/bodypart/l_leg/rousman/get_limb_icon(dropped, hideaux = FALSE)
	return
/////////////////////////////////////////////////////////////////////////////

/obj/item/bodypart/head/rousman/update_icon_dropped()
	return

/obj/item/bodypart/head/rousman/get_limb_icon(dropped, hideaux = FALSE)
	return

/obj/item/bodypart/head/rousman/getonmobprop(tag)
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 1,"sx" = -7,"sy" = -4,"nx" = 7,"ny" = -4,"wx" = -4,"wy" = -4,"ex" = 2,"ey" = -4,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)
			if("wielded")
				return null
			if("altgrip")
				return null
			if("onbelt")
				return list("shrink" = 1,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)
			if("onback")
				return list("shrink" = 1,"sx" = 1,"sy" = -1,"nx" = 1,"ny" = -1,"wx" = 4,"wy" = -1,"ex" = -1,"ey" = -1,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 8,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 1,"southabove" = 0,"eastabove" = 0,"westabove" = 0)

/obj/item/bodypart/head/rousman/skeletonize()
	. = ..()
	icon_state = "rousman_skel_head"
	headprice = 2


/datum/species/rousman
	name = "rousman"
	id = "rousman"
	species_traits = list(NO_UNDERWEAR)
	inherent_traits = list(TRAIT_RESISTCOLD,TRAIT_RESISTHIGHPRESSURE,TRAIT_RESISTLOWPRESSURE,TRAIT_RADIMMUNE, TRAIT_EASYDISMEMBER, TRAIT_CRITICAL_WEAKNESS, TRAIT_NASTY_EATER, TRAIT_LEECHIMMUNE, TRAIT_INHUMENCAMP)
	no_equip = list(ITEM_SLOT_SHIRT, ITEM_SLOT_MASK, ITEM_SLOT_GLOVES, ITEM_SLOT_SHOES, ITEM_SLOT_PANTS)
	offset_features_m = list(OFFSET_HANDS = list(0,-4))
	offset_features_f = list(OFFSET_HANDS = list(0,-4))
	dam_icon_f = null
	dam_icon_m = null
	damage_overlay_type = ""
	changesource_flags = WABBAJACK
	var/raceicon = "rousman"

/datum/species/rousman/update_damage_overlays(mob/living/carbon/human/H)
	return

/datum/species/rousman/regenerate_icons(mob/living/carbon/human/H)
	H.icon_state = ""
	if(H.notransform)
		return 1
	H.update_inv_hands()
	H.update_inv_handcuffed()
	H.update_inv_legcuffed()
	H.update_fire()
	H.update_body()
	var/mob/living/carbon/human/species/rousman/R = H
	R.update_wearable()
	H.update_transform()
	return TRUE

/mob/living/carbon/human/species/rousman/update_body()
	remove_overlay(BODY_LAYER)
	if(!dna || !dna.species)
		return
	var/datum/species/rousman/R = dna.species
	if(!istype(R))
		return
	icon_state = ""
	var/list/standing = list()
	var/mutable_appearance/body_overlay
	var/obj/item/bodypart/chesty = get_bodypart("chest")
	var/obj/item/bodypart/headdy = get_bodypart("head")
	if(!headdy)
		if(chesty && chesty.skeletonized)
			body_overlay = mutable_appearance(icon, "rousman_skel_decap", -BODY_LAYER)
		else
			body_overlay = mutable_appearance(icon, "[R.raceicon]_decap", -BODY_LAYER)
	else
		if(chesty && chesty.skeletonized)
			body_overlay = mutable_appearance(icon, "rousman_skel", -BODY_LAYER)
		else
			body_overlay = mutable_appearance(icon, "[R.raceicon]", -BODY_LAYER)

	if(body_overlay)
		standing += body_overlay
	if(standing.len)
		overlays_standing[BODY_LAYER] = standing

	apply_overlay(BODY_LAYER)
	dna.species.update_damage_overlays()

/mob/living/carbon/human/species/rousman/update_inv_head()
	update_wearable()
/mob/living/carbon/human/species/rousman/update_inv_armor()
	update_wearable()

/mob/living/carbon/human/species/rousman/Initialize()
	. = ..()
	addtimer(CALLBACK(src, PROC_REF(after_creation)), 1 SECONDS)

/mob/living/carbon/human/species/rousman/after_creation()
	..()
	gender = MALE
	if(src.dna && src.dna.species)
		src.dna.species.soundpack_m = new /datum/voicepack/rousman()
		src.dna.species.soundpack_f = new /datum/voicepack/rousman()
		var/obj/item/bodypart/head/headdy = get_bodypart("head")
		if(headdy)
			headdy.icon = 'icons/roguetown/mob/monster/rousman.dmi'
			headdy.icon_state = "[src.dna.species.id]_head"
			headdy.headprice = rand(7,20)
	var/obj/item/organ/eyes/eyes = src.getorganslot(ORGAN_SLOT_EYES)
	if(eyes)
		eyes.Remove(src,1)
		QDEL_NULL(eyes)
	eyes = new /obj/item/organ/eyes/night_vision/nightmare
	eyes.Insert(src)
	src.underwear = "Nude"
	if(src.charflaw)
		QDEL_NULL(src.charflaw)
	update_body()
	faction = list(FACTION_GRAGGAR)//both are graggarian creations that are collaborating to bring chaos
	name = "rousman"
	real_name = "rousman"
	ADD_TRAIT(src, TRAIT_NOMOOD, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_NOHUNGER, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_CRITICAL_WEAKNESS, TRAIT_GENERIC)

/datum/component/rot/corpse/rousman/process()
	var/amt2add = 10 //1 second
	var/time_elapsed = last_process ? (world.time - last_process)/10 : 1
	if(last_process)
		amt2add = ((world.time - last_process)/10) * amt2add
	last_process = world.time
	amount += amt2add
	if(has_world_trait(/datum/world_trait/pestra_mercy))
		amount -= 5 * time_elapsed

	var/mob/living/carbon/C = parent
	if(!C)
		qdel(src)
		return
	if(C.stat != DEAD)
		qdel(src)
		return
	var/should_update = FALSE
	if(amount > 20 MINUTES)
		for(var/obj/item/bodypart/B in C.bodyparts)
			if(!B.skeletonized)
				B.skeletonized = TRUE
				should_update = TRUE
	else if(amount > 12 MINUTES)
		for(var/obj/item/bodypart/B in C.bodyparts)
			if(!B.rotted)
				B.rotted = TRUE
				should_update = TRUE
			if(B.rotted && amount < 16 MINUTES && !(FACTION_MATTHIOS in C.faction))
				var/turf/open/T = C.loc
				if(istype(T))
					T.pollute_turf(/datum/pollutant/rot, 4)
	if(should_update)
		if(amount > 20 MINUTES)
			C.update_body()
			qdel(src)
			return
		else if(amount > 12 MINUTES)
			C.update_body()

/////////////////////
/////////////////////
////// Outfits //////
/////////////////////
/////////////////////

/datum/outfit/job/npc/rousman/ambush/pre_equip(mob/living/carbon/human/H)
	..()
	H.base_strength = rand(6, 10)
	H.base_perception = rand(6, 10)
	H.base_intelligence = rand(2, 5)
	H.base_constitution = rand(4, 8)
	H.base_endurance = rand(7, 10)
	H.base_speed = rand(10, 15)

	var/loadout = rand(1,4)
	switch(loadout)
		if(1) //Grats, you got all the good armor
			armor = /obj/item/clothing/armor/cuirass/iron/rousman/splint
			head = /obj/item/clothing/head/helmet/rousman/splint
			ADD_TRAIT(src, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
		if(2) //Plate armor with chance of getting a helm
			armor = /obj/item/clothing/armor/cuirass/iron/rousman/splint
			ADD_TRAIT(src, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
			if(prob(50))
				head = /obj/item/clothing/head/helmet/rousman/splint
		if(3) //Helm with chance of getting plate armor
			if(prob(50))
				armor = /obj/item/clothing/armor/cuirass/iron/rousman/splint
				ADD_TRAIT(src, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
			else
				armor = /obj/item/clothing/armor/leather/hide/rousman
			head = /obj/item/clothing/head/helmet/rousman
		if(4) //Just a loincloth for you
			armor = /obj/item/clothing/armor/leather/hide/rousman

	var/weapons = rand(1,5)
	switch(weapons)
		if(1) //Sword and Shield
			r_hand = /obj/item/weapon/sword/iron
			l_hand = /obj/item/weapon/shield/wood
		if(2) //Daggers
			r_hand = /obj/item/weapon/knife/copper
			l_hand = /obj/item/weapon/knife/copper
		if(3) //Spear
			r_hand = /obj/item/weapon/polearm/spear
		if(4) //Flail
			r_hand = /obj/item/weapon/flail
		if(5) //Mace
			r_hand = /obj/item/weapon/mace/spiked

////////////////////////////
////////////////////////////
////// AMBUSH OBJECTS //////
////////////////////////////
////////////////////////////

/obj/structure/rousman_hole
	name = "narrow hole"
	desc = "Is that infernal squeaking coming from this?"
	icon = 'icons/roguetown/topadd/rousman/structures.dmi'
	icon_state = "rousman_hole_inactive"
	layer = BELOW_OBJ_LAYER
	density = FALSE
	anchored = TRUE
	max_integrity = 500
	destroy_sound = 'sound/combat/hits/onstone/stonedeath.ogg'
	attacked_sound = list('sound/combat/hits/onstone/wallhit.ogg','sound/combat/hits/onstone/wallhit2.ogg','sound/combat/hits/onstone/wallhit3.ogg')
	var/activate_range = 5 //The view range needed to activate rousman jumping out
	var/skulking_vermin = 3 //Number of potential mobs in the hole
	var/already_ambushed = FALSE
	var/list/all_alarms = list() //The alarms for this obj
	var/activated = FALSE
	var/try_activating_timer = 12 MINUTES  //Timer to recheck if this obj can activate

/obj/structure/rousman_hole/Initialize()
	. = ..()
	GLOB.rousman_ambush_objects |= src
	pre_activate_check()

/obj/structure/rousman_hole/Destroy()
	GLOB.rousman_ambush_objects -= src
	for(var/obj/structure/rousman_alarm/alarm as anything in all_alarms)
		QDEL_NULL(alarm)
	all_alarms.Cut()
	return ..()

/obj/structure/rousman_hole/proc/pre_activate_check()
	if(activated == TRUE && already_ambushed == TRUE)
		return
	for(var/obj/structure/rousman_hole/RH in GLOB.rousman_ambush_objects)
		if(RH.activated == TRUE && RH.already_ambushed == FALSE)
			//try again later
			addtimer(CALLBACK(src, PROC_REF(pre_activate_check)), try_activating_timer)
			return
	if(activated == FALSE && already_ambushed == FALSE && prob(50))
		//better luck next time, adds a bit of randomness
		addtimer(CALLBACK(src, PROC_REF(pre_activate_check)), try_activating_timer)
		return
	activated = TRUE
	icon_state = "rousman_hole_active"
	//activates the hole for ambushing
	for(var/turf/T in view(activate_range,src))
		var/obj/structure/rousman_alarm/alarm = new /obj/structure/rousman_alarm(T)
		all_alarms.Add(alarm)
		alarm.hole = src

/obj/structure/rousman_hole/proc/ambush(mob/living/carbon/human/ambushed_mob)
	if(already_ambushed == TRUE)
		return
	var/num_mobs = rand(1, skulking_vermin)
	for(var/i = 1; i <= num_mobs; i++)
		var/mob/living/carbon/human/species/rousman/ambush/A = new /mob/living/carbon/human/species/rousman/ambush(get_turf(src))
		A.del_on_deaggro = 1 MINUTES
		A.ai_controller?.set_blackboard_key(BB_BASIC_MOB_CURRENT_TARGET, ambushed_mob)
	ambushed_mob.playsound_local(ambushed_mob, pick('sound/misc/jumphumans (1).ogg','sound/misc/jumphumans (2).ogg','sound/misc/jumphumans (3).ogg','sound/misc/jumpscare (1).ogg','sound/misc/jumpscare (2).ogg','sound/misc/jumpscare (3).ogg','sound/misc/jumpscare (4).ogg'), 100)
	already_ambushed = TRUE
	icon_state = "rousman_hole_inactive"
	delete_alarms()

/obj/structure/rousman_hole/proc/delete_alarms()
	for(var/obj/structure/rousman_alarm/alarm in all_alarms)
		if(QDELETED(alarm))
			continue
		qdel(alarm)

/obj/structure/rousman_alarm
	name = ""
	desc = ""
	icon = 'icons/roguetown/topadd/rousman/structures.dmi'
	icon_state = ""
	layer = BELOW_OBJ_LAYER
	density = FALSE
	anchored = TRUE
	var/obj/structure/rousman_hole/hole

/obj/structure/rousman_alarm/Destroy()
	hole = null
	return ..()

/obj/structure/rousman_alarm/Crossed(atom/movable/AM)
	. = ..()
	if(istype(AM, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = AM
		if(H.ambushable == TRUE && hole.already_ambushed == FALSE)
			hole.ambush(H)

//ROUSMAN TIERS FOR EVENTS & DUNGEONS

//slaves are the worst of the rousmen, feel free to toss them like goblins because they are pretty much the same, big numbers if you want to end the adventurers

/mob/living/carbon/human/species/rousman/slave
	name = "Slave"
	ai_controller = /datum/ai_controller/human_npc
	var/loadout = /datum/outfit/job/npc/rousman/slave
	ambushable = FALSE

/mob/living/carbon/human/species/rousman/slave/after_creation()
	. = ..()
	AddComponent(/datum/component/ai_aggro_system)
	job = "Slave"
	ADD_TRAIT(src, TRAIT_NOMOOD, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_NOHUNGER, TRAIT_GENERIC)
	equipOutfit(/datum/outfit/job/npc/rousman/slave)
	dodgetime = 13
	canparry = TRUE
	flee_in_pain = TRUE
	wander = TRUE

/mob/living/carbon/human/species/rousman/slave/Initialize()
	. = ..()
	AddComponent(/datum/component/ai_aggro_system)


/datum/outfit/job/npc/rousman/slave/pre_equip(mob/living/carbon/human/H)
	..()
	H.base_strength = rand(6, 10)
	H.base_perception = rand(6, 10)
	H.base_intelligence = rand(2, 5)
	H.base_constitution = rand(4, 8)
	H.base_endurance = rand(7, 10)
	H.base_speed = rand(10, 15)
	head = /obj/item/clothing/neck/coif/cloth/rousman
	armor = /obj/item/clothing/armor/leather/hide/rousman

	var/loadout = rand(1,3)
	switch(loadout)
		if(1)
			r_hand = pick (/obj/item/weapon/axe/iron, /obj/item/weapon/mace/woodclub, /obj/item/weapon/mace/cudgel/carpenter, /obj/item/weapon/pick, /obj/item/weapon/hammer)
		if(2)
			r_hand = pick (/obj/item/weapon/polearm/spear/stone/copper, /obj/item/weapon/polearm/spear/stone)
		if(3)
			r_hand = pick (/obj/item/weapon/flail/towner, /obj/item/weapon/sickle, /obj/item/weapon/knife/villager)

/mob/living/carbon/human/species/rousman/warrior
	name = "warrior"
	ai_controller = /datum/ai_controller/human_npc
	var/loadout = /datum/outfit/job/npc/rousman/warrior
	ambushable = FALSE

// the rousmen warriors are a medium level threat, they aren't cannon fodder but either a full warrior or either comparable to an orc warrior, they are at towner level with some armor watch out their big numbers since they can break armors due to be using actual weapons
/mob/living/carbon/human/species/rousman/warrior/after_creation()
	. = ..()
	AddComponent(/datum/component/ai_aggro_system)
	job = "warrior"
	ADD_TRAIT(src, TRAIT_NOMOOD, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_NOHUNGER, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	equipOutfit(/datum/outfit/job/npc/rousman/warrior)
	dodgetime = 13
	canparry = TRUE
	flee_in_pain = TRUE
	wander = TRUE

/mob/living/carbon/human/species/rousman/warrior/Initialize()
	. = ..()
	AddComponent(/datum/component/ai_aggro_system)


/datum/outfit/job/npc/rousman/warrior/pre_equip(mob/living/carbon/human/H)
	..()
	H.base_strength = rand(9, 11)
	H.base_perception = rand(6, 10)
	H.base_intelligence = rand(2, 5)
	H.base_constitution = rand(7, 8)
	H.base_endurance = rand(7, 10)
	H.base_speed = rand(10, 15)
	head = /obj/item/clothing/head/helmet/rousman/splint
	armor = /obj/item/clothing/armor/cuirass/iron/rousman/splint

	var/loadout = rand(1,3)
	switch(loadout)
		if(1)//normal shield + hand weapon infantry
			r_hand = pick (/obj/item/weapon/sword/scimitar/messer, /obj/item/weapon/flail, /obj/item/weapon/sword/short, /obj/item/weapon/mace/warhammer)
			l_hand = /obj/item/weapon/shield/wood
		if(2)//pikemen
			r_hand = /obj/item/weapon/polearm/spear
			l_hand = /obj/item/weapon/shield/tower
		if(3)//killers
			r_hand = pick (/obj/item/weapon/polearm/halberd/bardiche/warcutter, /obj/item/weapon/sword/long/heirloom, /obj/item/weapon/polearm/halberd/bardiche)


// the champions of the rous-men are actual warriors comparable to orcs, the biggest rouses around get the best armors and weapons including some decent training for them

/mob/living/carbon/human/species/rousman/champion
	name = "champion"
	ai_controller = /datum/ai_controller/human_npc
	var/loadout = /datum/outfit/job/npc/rousman/champion
	ambushable = FALSE

/mob/living/carbon/human/species/rousman/champion/after_creation()
	. = ..()
	AddComponent(/datum/component/ai_aggro_system)
	job = "champion"
	ADD_TRAIT(src, TRAIT_NOMOOD, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_NOHUNGER, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	equipOutfit(/datum/outfit/job/npc/rousman/champion)
	dodgetime = 13
	canparry = TRUE
	flee_in_pain = FALSE//trained to win
	wander = TRUE

/mob/living/carbon/human/species/rousman/champion/Initialize()
	. = ..()
	AddComponent(/datum/component/ai_aggro_system)


/datum/outfit/job/npc/rousman/champion/pre_equip(mob/living/carbon/human/H)
	..()
	H.base_strength = rand(12, 13)
	H.base_perception = rand(6, 10)
	H.base_intelligence = rand(2, 5)
	H.base_constitution = rand(9, 11)
	H.base_endurance = rand(9, 11)
	H.base_speed = rand(10, 15)
	head = /obj/item/clothing/head/helmet/rousman
	armor = /obj/item/clothing/armor/cuirass/iron/rousman
	cloak = /obj/item/clothing/cloak/raincloak/red

	var/loadout = rand(1,3)
	switch(loadout)
		if(1)//good shield + hand weapon infantry
			r_hand = pick (/obj/item/weapon/sword/scimitar, /obj/item/weapon/flail/sflail, /obj/item/weapon/axe/steel, /obj/item/weapon/mace/warhammer/steel)
			l_hand = /obj/item/weapon/shield/tower/metal
		if(2)//pikemen
			r_hand = /obj/item/weapon/polearm/spear/billhook
			l_hand = /obj/item/weapon/shield/tower/metal
		if(3)//killers
			r_hand = pick (/obj/item/weapon/sword/long/greatsword/zwei, /obj/item/weapon/polearm/halberd, /obj/item/weapon/mace/goden/steel)

//kaizoku geared rousmen, they like to call themselves fearsome warriors of the sinistar when they just robbed the corpses of some poor kaizoku warriors

/mob/living/carbon/human/species/rousman/zamurous
	name = "ZAMURAI!"
	ai_controller = /datum/ai_controller/human_npc
	var/loadout = /datum/outfit/job/npc/rousman/zamurous
	ambushable = FALSE

/mob/living/carbon/human/species/rousman/zamurous/after_creation()
	. = ..()
	AddComponent(/datum/component/ai_aggro_system)
	job = "ZAMURAI!"
	ADD_TRAIT(src, TRAIT_NOMOOD, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_NOHUNGER, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	equipOutfit(/datum/outfit/job/npc/rousman/zamurous)
	dodgetime = 13
	canparry = TRUE
	flee_in_pain = FALSE//DEATH BEFORE DISHONORU!
	wander = TRUE

/mob/living/carbon/human/species/rousman/zamurous/Initialize()
	. = ..()
	AddComponent(/datum/component/ai_aggro_system)


/datum/outfit/job/npc/rousman/zamurous/pre_equip(mob/living/carbon/human/H)
	..()
	H.base_strength = rand(12, 13)
	H.base_perception = rand(6, 10)
	H.base_intelligence = rand(2, 5)
	H.base_constitution = rand(9, 11)
	H.base_endurance = rand(9, 11)
	H.base_speed = rand(10, 15)
	head = /obj/item/clothing/head/helmet/rousman/kaizoku
	armor = /obj/item/clothing/armor/cuirass/iron/rousman/kaizoku

	var/loadout = rand(1,2)
	switch(loadout)
		if(1)//zatana warrior
			r_hand = /obj/item/weapon/sword/short/wakizashi
		if(2)//pikemen
			r_hand = /obj/item/weapon/polearm/spear/yari


