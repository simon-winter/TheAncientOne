keyDown = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
keyUp = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
keyLeft = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
keyRight = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
keyAction = keyboard_check_pressed(vk_enter);


if (keyAction){
	
	if (!choice_dialogue and counter < str_len) counter = str_len;
	else if (page < array_length_1d(text) - 1){
		var line = next_line[page];
		if (choice_dialogue){
			line = line[choice];
		}
		if (line == 0) page++;
		else if (line == -1) {
			instance_destroy();
			exit;
		}
		else page = line;
		event_perform(ev_other,ev_user1);
	}
	else{
		instance_destroy();
	}
}

if (choice_dialogue){
	choice += keyDown - keyUp;
	if (choice > text_array_len - 1) choice = 0;
	if (choice < 0) choice = text_array_len - 1;
}
