

function scr_canSeePartner(o_me, o_partner){
	
   if(collision_line(o_me.bbox_left, o_me.bbox_top,	o_partner.bbox_left, o_partner.bbox_top,
	o_wall,false,false) != noone){ return false; }
   if(collision_line(o_me.bbox_left, o_me.bbox_bottom, o_partner.bbox_left, o_partner.bbox_bottom,
	o_wall,false,false) != noone){ return false; }
   if(collision_line(o_me.bbox_right, o_me.bbox_top, o_partner.bbox_right, o_partner.bbox_top,
	o_wall,false,false) != noone){ return false; }
   if(collision_line(o_me.bbox_right, o_me.bbox_bottom, o_partner.bbox_right, o_partner.bbox_bottom,
	o_wall,false,false) != noone){ return false; }	
	
	return true;	
}