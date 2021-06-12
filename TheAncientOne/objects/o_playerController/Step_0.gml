#region //Input
if (!lock){
    keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
    keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
    keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
    keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
    keyAction = keyboard_check_pressed(vk_enter);
    keyVision = keyboard_check(vk_shift);
}
else {
    keyLeft = 0;
    keyRight = 0;
    keyUp = 0;
    keyDown = 0;
    keyAction = 0;
    keyVision = 0;
}

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

//Movement
hsp = lengthdir_x(inputMagnitude * walksp, inputDirection);
vsp = lengthdir_y(inputMagnitude * walksp, inputDirection);

scr_collision();
#endregion


