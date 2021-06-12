///@description cutscene_instance_destroy
///@arg obj_id
function cs_instance_destroy(argument0) {
	with (argument0){
		instance_destroy();
	}
	cutscene_end_action();
}
