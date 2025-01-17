/mob/living/carbon/
	gender = MALE
	var/datum/species/species //Contains icon generation and language information, set during New().
	var/datum/species_form/form //Steals the icon generation info from above.
	var/species_aan = ""
	var/species_color_key = "#000000"
	var/species_name = "Carbon Lifeform"
	var/list/stomach_contents = list()
	var/list/datum/disease2/disease/virus2 = list()
	var/list/antibodies = list()

	var/life_tick = 0      // The amount of life ticks that have processed on this mob.
	var/analgesic = 0 // when this is set, the mob isn't affected by shock or pain
					  // life should decrease this by 1 every tick
	// total amount of wounds on mob, used to spread out healing and the like over all wounds
	var/obj/item/handcuffed = null //Whether or not the mob is handcuffed
	var/obj/item/legcuffed = null  //Same as handcuffs but for legs. Bear traps use this.
	//Surgery info
	var/datum/surgery_status/op_stage = new/datum/surgery_status
	//Active emote/pose
	var/pose = null
	var/list/chem_effects = list()
	var/datum/reagents/metabolism/bloodstr = null
	var/datum/reagents/metabolism/ingested = null
	var/datum/reagents/metabolism/touching = null
	var/datum/metabolism_effects/metabolism_effects = null
	var/losebreath = 0 //if we failed to breathe last tick

	var/coughedtime = null
	var/lastpuke = 0

	var/cpr_time = 1.0
	nutrition = 400.0//Carbon

	var/flesh_color = "#A10808"

	var/obj/item/weapon/tank/internal = null//Human/Monkey