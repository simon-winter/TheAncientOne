/// @description Insert description here
// You can write your code in this editor
if (phase == 0){ //idle
	speed = 0;
	dir = 0;
	timer_atk = 0;
}
if (phase == 1 and vision){ //Running to the gnome
	dir = point_direction(x,y,o_gnome.x,o_gnome.y);
	direction = dir;
	speed = 1;
	timer_atk++;
	if (timer_atk > timer_atk_max) phase = 0;
}
if (phase == 2 and vision){ //Running away from the giant
	dir = point_direction(x,y,o_giant.x,o_giant.y);
	direction = dir;
	speed = 1;
	timer_atk++;
	if (timer_atk > timer_atk_max) phase = 0;
}

if (instance_exists(o_gnome) and distance_to_object(o_gnome) < 100) phase = 1;
else if (distance_to_object(o_giant) < 100) phase = 2;

with (o_gnome){
	if (place_meeting(x,y,other) and sendBack = true) instance_destroy(other);
}

if (collision_line(x,y,o_gnome.x,o_gnome.y,o_wall,0,1) and collision_line(x,y,o_giant.x,o_giant.y,o_wall,0,1)){
	vision = false;
	phase = 0;
}
else vision = true;
