/datum/power/changeling/paralysis_sting
	name = "Paralysis Sting"
	desc = "We silently sting a human, paralyzing them for a short time."
	genomecost = 3
	verbpath = /mob/proc/changeling_paralysis_sting

/mob/proc/changeling_paralysis_sting()
	set category = "Changeling"
	set name = "Paralysis sting (30)"
	set desc="Sting target"

	var/mob/living/carbon/T = changeling_sting(30,/mob/proc/changeling_paralysis_sting)
	if(!T)
		return 0
	T.attack_log += text("\[[time_stamp()]\] <font color='red'>Was paralysis stung by [key_name(src)]</font>")
	src.attack_log += text("\[[time_stamp()]\] <font color='orange'> Used paralysis sting on [key_name(T)]</font>")
	msg_admin_attack("[key_name(T)] was paralysis stung by [key_name(src)]")
	T << "<span class='danger'>Your muscles begin to painfully tighten.</span>"
	T.Weaken(20)
	feedback_add_details("changeling_powers","PS")
	return 1