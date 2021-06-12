#region //sendBack

if (sendBack && partner != noone){	
	
	lock = true;
	
	var dist = point_distance(x, y, partner.x, partner.y)
	if(dist < reachedDistance){
		sendBack = false;
		partner.lock = false
		instance_destroy(self)
		return;
	}
	
	var perc = dist / pullInitDist	

	var curSpeed = ease_out_cubic(perc, 0, pullMaxSpeed, 1)
	
	// moving towards target
	var angle = point_direction(x, y, partner.x, partner.y)
	x += lengthdir_x(curSpeed, angle);
	y += lengthdir_y(curSpeed, angle);		
}

#endregion

	

