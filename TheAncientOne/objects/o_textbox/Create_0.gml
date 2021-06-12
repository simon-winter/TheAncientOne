global.game_width = 480;
global.game_height = 270;

display_set_gui_size(global.game_width,global.game_height);
box = spr_box;
frame = spr_frame;
portrait = -1;
namebox = spr_namebox;
box_width = sprite_get_width(box);
//box_height = sprite_get_height(box);
port_width = sprite_get_width(portrait);
port_height = sprite_get_height(portrait);

sh = 0;

text[0] = "";
page = 0;
name = "";
counter = 0;
portrait_index = -1;

port_x = (global.game_width - box_width - port_width) * 0.5;
port_y = (global.game_height) - port_height;
box_x = 90;
box_y = 180;
namebox_x = 90;
namebox_y = 150;

//x_buffer = 24;
//y_buffer = 8;
text_x = 95;
text_y = 180;
name_text_x = 95;
name_text_y = 150;
text_max_width = 320;

text_col = c_black;
name_text_col = c_black;
text_height = 20;

choice = 0;
choice_col = c_black;