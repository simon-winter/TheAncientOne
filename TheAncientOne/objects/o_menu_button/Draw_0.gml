/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_set_font();
draw_set_halign(fa_middle); 
draw_set_valign(fa_middle);
draw_text(46,96,"START");
draw_text(46,144,"EXIT");

if (select == 0) draw_sprite(spr_menu_buttonS, 0, 46, 96);
else draw_sprite(spr_menu_buttonS, 0, 46, 144);