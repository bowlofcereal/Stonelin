
/obj/item/organ/ears/elf
	name = "elf ears"
	accessory_type = /datum/sprite_accessory/ears/elf

/obj/item/organ/ears/elfw
	name = "wood elf ears"
	accessory_type = /datum/sprite_accessory/ears/elfw

/obj/item/organ/ears/tiefling
	name = "tiefling ears"
	accessory_type = /datum/sprite_accessory/ears

/obj/item/organ/ears/halforc
	name = "halforc ears"
	accessory_type = /datum/sprite_accessory/ears/elf

/datum/customizer/organ/ears
	name = "Ears"
	abstract_type = /datum/customizer/organ/ears

/datum/customizer_choice/organ/ears
	name = "Ears"
	organ_type = /obj/item/organ/ears
	organ_slot = ORGAN_SLOT_EARS
	allows_accessory_color_customization = FALSE
	abstract_type = /datum/customizer_choice/organ/ears

/datum/customizer_choice/organ/ears/elf
	name = "Elf Ears"
	organ_type = /obj/item/organ/ears
	sprite_accessories = list(
		/datum/sprite_accessory/ears/elf,
		/datum/sprite_accessory/ears/elfw)

/datum/customizer/organ/ears/elf
	customizer_choices = list(/datum/customizer_choice/organ/ears/elf)
	allows_disabling = TRUE

/datum/customizer/organ/ears/halforc
	customizer_choices = list(/datum/customizer_choice/organ/ears/halforc)
	allows_disabling = FALSE

/datum/customizer_choice/organ/ears/halforc
	name = "Half-Orc Ears"
	organ_type = /obj/item/organ/ears
	sprite_accessories = list(
		/datum/sprite_accessory/ears/elf,
		/datum/sprite_accessory/ears/elfw,
		)

/datum/customizer/organ/ears/tiefling
	customizer_choices = list(/datum/customizer_choice/organ/ears/tiefling)
	allows_disabling = FALSE

/datum/customizer_choice/organ/ears/tiefling
	name = "Tiefling Ears"
	organ_type = /obj/item/organ/ears
	sprite_accessories = list(
		/datum/sprite_accessory/ears/elf,
		/datum/sprite_accessory/ears/elfw,
		)

/obj/item/organ/ears/anthro
	name = "wild-kin ears"

/datum/customizer/organ/ears/anthro
	customizer_choices = list(/datum/customizer_choice/organ/ears/anthro)
	allows_disabling = TRUE
	default_disabled = TRUE

/datum/customizer_choice/organ/ears/anthro
	name = "Wild-Kin Ears"
	organ_type = /obj/item/organ/ears/anthro
	generic_random_pick = TRUE
	sprite_accessories = list(
		/datum/sprite_accessory/ears/cat,
		/datum/sprite_accessory/ears/axolotl,
		/datum/sprite_accessory/ears/bat,
		/datum/sprite_accessory/ears/bear,
		/datum/sprite_accessory/ears/bigwolf,
		/datum/sprite_accessory/ears/bigwolf_inner,
		/datum/sprite_accessory/ears/rabbit,
		/datum/sprite_accessory/ears/bunny,
		/datum/sprite_accessory/ears/big/rabbit_large,
		/datum/sprite_accessory/ears/bunny_perky,
		/datum/sprite_accessory/ears/cat_big,
		/datum/sprite_accessory/ears/cat_normal,
		/datum/sprite_accessory/ears/cow,
		/datum/sprite_accessory/ears/curled,
		/datum/sprite_accessory/ears/deer,
		/datum/sprite_accessory/ears/eevee,
		/datum/sprite_accessory/ears/elf,
		/datum/sprite_accessory/ears/elephant,
		/datum/sprite_accessory/ears/fennec,
		/datum/sprite_accessory/ears/fish,
		/datum/sprite_accessory/ears/fox,
		/datum/sprite_accessory/ears/vulp,
		/datum/sprite_accessory/ears/husky,
		/datum/sprite_accessory/ears/jellyfish,
		/datum/sprite_accessory/ears/kangaroo,
		/datum/sprite_accessory/ears/lab,
		/datum/sprite_accessory/ears/murid,
		/datum/sprite_accessory/ears/otie,
		/datum/sprite_accessory/ears/pede,
		/datum/sprite_accessory/ears/sergal,
		/datum/sprite_accessory/ears/shark,
		/datum/sprite_accessory/ears/skunk,
		/datum/sprite_accessory/ears/squirrel,
		/datum/sprite_accessory/ears/wolf,
		/datum/sprite_accessory/ears/perky,
		/datum/sprite_accessory/ears/antenna_simple1,
		/datum/sprite_accessory/ears/antenna_simple2,
		/datum/sprite_accessory/ears/antenna_simple3,
		/datum/sprite_accessory/ears/antenna_fuzzball1,
		/datum/sprite_accessory/ears/antenna_fuzzball2,
		/datum/sprite_accessory/ears/cobrahood,
		/datum/sprite_accessory/ears/cobrahoodears,
		/datum/sprite_accessory/ears/miqote,
		/datum/sprite_accessory/ears/lunasune,
		/datum/sprite_accessory/ears/sabresune,
		/datum/sprite_accessory/ears/possum,
		/datum/sprite_accessory/ears/raccoon,
		/datum/sprite_accessory/ears/mouse,
		/datum/sprite_accessory/ears/big/acrador_long,
		/datum/sprite_accessory/ears/big/acrador_short,
		)

/datum/customizer/organ/ears/demihuman
	customizer_choices = list(/datum/customizer_choice/organ/ears/demihuman)
	allows_disabling = TRUE

/datum/customizer_choice/organ/ears/demihuman
	name = "Hollow-Kin Ears"
	organ_type = /obj/item/organ/ears
	generic_random_pick = TRUE
	sprite_accessories = list(
		/datum/sprite_accessory/ears/cat,				//Quality control ; Will not be re-added until sprite touchup. -Remains in with Ook request.
//		/datum/sprite_accessory/ears/axolotl,  			QC
		/datum/sprite_accessory/ears/bat,
//		/datum/sprite_accessory/ears/bear,				QC
		/datum/sprite_accessory/ears/bigwolf,
		/datum/sprite_accessory/ears/bigwolf_inner,
		/datum/sprite_accessory/ears/rabbit,
		/datum/sprite_accessory/ears/bunny,
//		/datum/sprite_accessory/ears/bunny_perky,		QC
		/datum/sprite_accessory/ears/big/rabbit_large,
		/datum/sprite_accessory/ears/cat_big,
		/datum/sprite_accessory/ears/cat_normal,
		/datum/sprite_accessory/ears/cow,
//		/datum/sprite_accessory/ears/curled,			Is this even an ear?? This looks like shit.
//		/datum/sprite_accessory/ears/deer,				Horns, not ears?
		/datum/sprite_accessory/ears/eevee,
		/datum/sprite_accessory/ears/elf,
//		/datum/sprite_accessory/ears/elephant,			QC
		/datum/sprite_accessory/ears/fennec,
//		/datum/sprite_accessory/ears/fish,				QC
		/datum/sprite_accessory/ears/fox,
		/datum/sprite_accessory/ears/vulp,
		/datum/sprite_accessory/ears/husky,
		/datum/sprite_accessory/ears/jellyfish,			//WTF but Ook requests to keep, so.
		/datum/sprite_accessory/ears/kangaroo,
		/datum/sprite_accessory/ears/lab,
		/datum/sprite_accessory/ears/murid,
//		/datum/sprite_accessory/ears/otie,
		/datum/sprite_accessory/ears/pede,
		/datum/sprite_accessory/ears/shark,
		/datum/sprite_accessory/ears/skunk,
		/datum/sprite_accessory/ears/squirrel,
		/datum/sprite_accessory/ears/wolf,
		/datum/sprite_accessory/ears/perky,
		/datum/sprite_accessory/ears/miqote,
		/datum/sprite_accessory/ears/lunasune,
		/datum/sprite_accessory/ears/possum,
		/datum/sprite_accessory/ears/raccoon,
		/datum/sprite_accessory/ears/mouse,
		/datum/sprite_accessory/ears/big/acrador_long,
		/datum/sprite_accessory/ears/big/acrador_short,
		)


/datum/customizer/organ/ears/harpy
	customizer_choices = list(/datum/customizer_choice/organ/ears/harpy)
	allows_disabling = FALSE

/datum/customizer_choice/organ/ears/harpy
	name = "Harpy Ears"
	organ_type = /obj/item/organ/ears
	generic_random_pick = TRUE
	sprite_accessories = list(
		/datum/sprite_accessory/ears/miqote,
		)


// STONEKEEP CONTENT BELOW
/datum/customizer/organ/ears/oni
	customizer_choices = list(/datum/customizer_choice/organ/ears/oni)
	allows_disabling = FALSE

/datum/customizer_choice/organ/ears/oni
	name = "Ogrun ears"
	organ_type = /obj/item/organ/ears/oni
	generic_random_pick = TRUE
	sprite_accessories = list(/datum/sprite_accessory/ears/oni)

// Oni Ears
/obj/item/organ/ears/oni
	name = "ogrun ears"
	accessory_type = /datum/sprite_accessory/ears/oni

// TENGU EARS
/obj/item/organ/ears/tengu
	name = "Skylancer ears"
	accessory_type = /datum/sprite_accessory/ears/tengu

/datum/customizer/organ/ears/tengu
	customizer_choices = list(/datum/customizer_choice/organ/ears/tengu)
	allows_disabling = FALSE

/datum/customizer_choice/organ/ears/tengu
	name = "Skylancer ears"
	organ_type = /obj/item/organ/ears/tengu
	generic_random_pick = TRUE
	sprite_accessories = list(/datum/sprite_accessory/ears/tengu)

// KAPPA EARS
/obj/item/organ/ears/kappa
	name = "Undine ears"
	accessory_type = /datum/sprite_accessory/ears/kappae

/datum/customizer/organ/ears/kappa
	customizer_choices = list(/datum/customizer_choice/organ/ears/kappa)
	allows_disabling = FALSE

/datum/customizer_choice/organ/ears/kappa
	name = "Undine ears"
	organ_type = /obj/item/organ/ears/kappa
	generic_random_pick = TRUE
	sprite_accessories = list(/datum/sprite_accessory/ears/kappae)


// FOX EARS
// Changeling ears organ
/obj/item/organ/ears/kitsune_ears
	name = "Fox Ears"
	accessory_type = /datum/sprite_accessory/ears/kitsune_upright

/datum/customizer/organ/ears/kitsune
	customizer_choices = list(/datum/customizer_choice/organ/ears/kitsune_ears)
	allows_disabling = FALSE

// Foxears customizer choices
/datum/customizer_choice/organ/ears/kitsune_ears
	name = "Fox ears"
	organ_type = /obj/item/organ/ears/kitsune_ears
	generic_random_pick = TRUE
	sprite_accessories = list(/datum/sprite_accessory/ears/kitsune_upright,
							/datum/sprite_accessory/ears/kitsune_side,
							/datum/sprite_accessory/ears/kitsune_thick,
							/datum/sprite_accessory/ears/kitsune_onedown)
