/mob/new_player/proc/spawn_checks_vr()
	var/pass = TRUE

// ARFS Edit - Don't want no OOC nots, plus custom species have been disabled.

/*
	//No OOC notes
	if (config.allow_Metadata && client && client.prefs && (isnull(client.prefs.metadata) || length(client.prefs.metadata) < 15))
		src << "<span class='warning'>Please set informative OOC notes related to ERP preferences. Set them using the 'OOC Notes' button on the 'General' tab in character setup.</span>"
		pass = FALSE

	//Custom species checks
	if (client && client.prefs && client.prefs.species == "Custom Species")

		//Didn't name it
		if(!client.prefs.custom_species)
			pass = FALSE
			src << "<span class='warning'>You have to name your custom species. Do this on the VORE tab in character setup.</span>"

		//Check traits/costs
		var/list/megalist = client.prefs.pos_traits + client.prefs.neu_traits + client.prefs.neg_traits
		var/points_left = client.prefs.starting_trait_points
		var/traits_left = client.prefs.max_traits
		for(var/T in megalist)
			traits_left--
			var/cost = traits_costs[T]

			//A trait was removed from the game
			if(isnull(cost))
				pass = FALSE
				src << "<span class='warning'>Your custom species is not playable. One or more traits appear to have been removed from the game or renamed. Enter character setup to correct this.</span>"
				break
			else
				points_left -= traits_costs[T]

		//Went into negatives
		if(points_left < 0 || traits_left < 0)
			pass = FALSE
			src << "<span class='warning'>Your custom species is not playable. Reconfigure your traits on the VORE tab.</span>"
*/
	//Final popup notice
	if (!pass)
		alert(src,"There were problems with spawning your character. Check your message log for details.","Error","OK")
	return pass
