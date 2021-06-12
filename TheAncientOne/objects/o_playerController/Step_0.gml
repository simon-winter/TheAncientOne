#region //Input
if (!lock){
    keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
    keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
    keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
    keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
	
	inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
	inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);
}else{
	inputMagnitude = 0
}
	
addMovement(inputDirection, inputMagnitude)

#endregion

