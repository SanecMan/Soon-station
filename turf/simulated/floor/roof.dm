/turf/simulated/floor/roof
	icon_state = "null"
	second_name = 0
	var/image/roof
	Height = 2

	New()
		..()
		roof = image(icon='floors.dmi',icon_state="roof")
		roof.override = 1
		roof.loc = src

	proc/show(var/mob/M)
		M.client.images += roof

	proc/hide(var/mob/M)
		M.client.images -= roof