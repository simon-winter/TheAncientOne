#region //Input
if (!lock){
    keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
    keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
    keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
    keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
	
	inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
	inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);
	
	if(inputMagnitude){		
		hsp += lengthdir_x(inputMagnitude * acceleration, inputDirection);
		vsp += lengthdir_y(inputMagnitude * acceleration, inputDirection);	
	}else{
		hsp *= (1-dragFactor)
		vsp *= (1-dragFactor)
	}
	
	var crtSpeed = sqrt(sqr(hsp) + sqr(vsp))
	
	if(crtSpeed > maxWalkSpeed){
		var factor = maxWalkSpeed / crtSpeed
		hsp *= factor
		vsp *= factor
	}
	
	
	show_debug_message(crtSpeed)
	
	
}

scr_collision();

#endregion

