if(target == noone){
	target = o_gnome.lock ? o_giant : o_gnome;
}

var dist = point_distance(x, y, target.x, target.y)
var perc = clamp(dist / slowingCameraRadius, 0, 1)
var camSpeed = ease_out_cubic(perc, minCameraSpeed, maxCameraSpeed-minCameraSpeed,3)

show_debug_message(camSpeed)


angle = point_direction(x, y, target.x, target.y)

x += lengthdir_x(camSpeed, angle);
y += lengthdir_y(camSpeed, angle);