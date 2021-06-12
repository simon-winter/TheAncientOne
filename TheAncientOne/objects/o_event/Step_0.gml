if (!instance_exists(o_cutscene)){
	if (place_meeting(x,y,o_giant)){
		create_cutscene(t_scene_info);
		instance_destroy();
	}
}