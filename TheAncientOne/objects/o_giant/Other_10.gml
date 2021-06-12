/// @description Change Charackter
lock = true;

var gnome = instance_create_layer(x,y,"Instances", o_gnome)
with(gnome){
	
	hsp = lengthdir_x(other.throwGnomeSpeed, other.direction);	
	vsp = lengthdir_y(other.throwGnomeSpeed,  other.direction);
	
	o_camera.target = gnome
	lock = false;
}


