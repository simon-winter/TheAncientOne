/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(o_fade)){
	keyUp = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
	keyAction = keyboard_check_pressed(vk_enter);
}

if (keyUp or keyDown){
	if (select == 0) select = 1;
	else select = 0;
}
if (keyAction and timer > 30){
	if (select == 0) instance_create_layer(0,0,"fade",o_fade);
	else game_end();
}

timer++;