function scr_create_cutscene(argument0) {
	var inst = instance_create_layer(0,0,"Instances",obj_cutscene)
	with(inst){
		scene_info = argument0
		event_perform(ev_other,ev_user0)
	}


}