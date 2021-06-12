///@description cutscene_wait
///@arg seconds
function cs_wait(argument0) {

	timer++;

	if (timer >= argument0 * room_speed and !instance_exists(o_textbox)){
		timer = 0;
		cutscene_end_action();
	}


}
