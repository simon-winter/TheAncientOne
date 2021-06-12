// starting control condition
lock = false;

maxWalkSpeed = 3;
acceleration = 0.3;
dragFactor = 0.1

// don't edit
hsp = 0;
vsp = 0;
lastMovedDirection = 0;

function addMovement(dir, magnitude){
	if(magnitude){		
		hsp += lengthdir_x(magnitude * acceleration, dir);
		vsp += lengthdir_y(magnitude * acceleration, dir);
		lastMovedDirection = dir;
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

	scr_collision();
}
