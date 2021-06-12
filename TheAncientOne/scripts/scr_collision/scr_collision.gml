function scr_collision() {
    var _collision = false;

    if (place_meeting(x+hsp,y,o_notWalkable)){
        while(!place_meeting(x+sign(hsp),y,o_notWalkable)){
            x = x + sign(hsp);
        }
        hsp = 0;
    }
    x = x + hsp;

    if (place_meeting(x,y+vsp,o_notWalkable)){
        while(!place_meeting(x,y+sign(vsp),o_notWalkable)){
            y = y + sign(vsp);
        }
        vsp = 0;
    }

    y = y + vsp;
	
    return _collision;
}
