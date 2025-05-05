/// @description
//draw_text(10,10,string(obj_camera.x)+","+string(obj_camera.y))
//draw_text(10,30,string(mouse_x)+","+string(mouse_y))


var topbox_padd = 5

var _h = (topbox_padd*2) + (25*SCALE);
draw_sprite_ext(spr_box, 0, 0,0, bW/32, _h/32, 0, c_white, 1)

draw_set_font(global.fontDigits)
draw_set_halign(fa_right)

//Smile button
draw_sprite_ext(spr_smile,0,bW/2,topbox_padd,SCALE,SCALE,0,c_white,1)

//Flag counter
var counter = flags;
if(counter<10) 
{
	counter = "0"+string(counter)	
} else counter = string(counter);


draw_text_transformed(topbox_padd+(27*SCALE),topbox_padd+1,counter,SCALE,SCALE,0)


//Timer
//bW-((57+topbox_padd)*SCALE),topbox_padd
var _sec = game_runTime mod 60;
var _min = game_runTime div 60;
var _x = bW-((57+topbox_padd)*SCALE)
var _y = topbox_padd

draw_sprite_ext(spr_timer, 0, _x, _y,SCALE,SCALE,0,c_white,1)
draw_text_transformed(_x+(56*SCALE),_y+1,_sec, SCALE, SCALE, 0)
draw_text_transformed(_x+(27*SCALE),_y+1,_min, SCALE, SCALE, 0)

draw_set_halign(fa_left)
draw_set_font(fnt_UI)

//draw_text(10,10,obj_camera.zoom_level)