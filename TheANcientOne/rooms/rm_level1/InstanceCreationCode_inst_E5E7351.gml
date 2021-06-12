t_scene_info = [
	[cs_wait, 3],
	[cs_instance_create, 0, 0, "gui", d_text],
	[cs_wait, 1],
	[cs_instance_destroy, d_text],
	[cs_wait, 3],
	[cs_instance_create, 0, 0, "gui", d_text2],
	[cs_wait, 1],
	[cs_instance_destroy, d_text2]
]