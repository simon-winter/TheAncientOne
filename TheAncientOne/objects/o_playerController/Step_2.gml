/// @description Insert description here
// You can write your code in this editor

if (partner == noone){
	return;
	}
if(!lock && keyboard_check(ord("Q"))){
	sendBack = true;
}

if (sendBack){
	dir = point_direction(partner.x,partner.y, x, y)
	partner.direction = dir;
	partner.speed = pullSpeed;
}

if(distance_to_point(partner.x, partner.y) < minDistance){
	sendBack = false;
	partner.speed = 0;
}