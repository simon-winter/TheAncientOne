/// @description Insert description here
// You can write your code in this editor
timer--;

if(timer < 0) image_xscale -= 0.01;

if (image_xscale < 0) instance_destroy();