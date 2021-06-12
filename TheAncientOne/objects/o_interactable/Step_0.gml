
activated =	collision_circle(x,y, triggerRadius, triggeredBy, false, false) != noone
	
// bool == 0 | 1 
image_index = activated

with(targetToTrigger){		
	setTrigger(other.id, other.activated)
}