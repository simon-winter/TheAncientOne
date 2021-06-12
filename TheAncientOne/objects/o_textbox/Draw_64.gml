//Draw box
draw_sprite(box,0,box_x,box_y);

if (portrait_index >= 0){
	//Draw Portrait Back
	//draw_sprite(frame,0,port_x,port_y);
	//Draw Portrait
	draw_sprite(portrait,portrait_index,port_x,port_y);
}

//if (name >= 0){
	//Draw Namebox
draw_sprite(namebox,0,namebox_x,namebox_y);
//}
//----TEXT
draw_set_halign(fa_left); draw_set_valign(fa_top);
//draw_set_font(f_montBold20);
draw_set_colour($5b8aff);

//Draw Name
var c = name_text_col;
draw_set_halign(fa_left); draw_set_valign(fa_top);
draw_text_color(name_text_x,name_text_y,name,c,c,c,c,1);
draw_set_halign(fa_left); draw_set_valign(fa_top);

//draw_set_font(f_montReg5);
draw_set_colour($929292);

if (!choice_dialogue){
	//Draw Text
	if (counter < str_len) {
		counter++;
	}
	var substr = string_copy(text_wrapped,1,counter);

	c = text_col;
	draw_text_ext_color(text_x,text_y,substr,text_height,text_max_width,c,c,c,c,1);
}
else {
	c = text_col;
	
	var i = 0, y_add = 0; repeat (text_array_len){
		if (choice == i){
			c = choice_col;
			//draw_text_color(box_x+text_max_width,text_y+y_add,"<",c,c,c,c,1);
			sh = string_width(text_array[i])
		}
		else c = text_col;
		draw_text_ext_color(text_x,text_y+y_add,text_array[i],text_height,text_max_width,c,c,c,c,1);
		y_add += string_height_ext(text_array[i],text_height,text_max_width);
		i++;
	}
	
}

