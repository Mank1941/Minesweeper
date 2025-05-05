/// @description Init
view_enabled = true;
view_visible[0] = true;

camW = 360
camH = 640

xTo = x;
yTo = y;

view_camera[0] = camera_create_view(0, 0, camW, camH);

//pinching = false;
//view_a = 0;

////debug
//touch_x[0] = 0;
//touch_y[0] = 0;
//touch_x[1] = 0;
//touch_y[1] = 0;
//midpoint_x = 0;
//midpoint_y = 0;


//zoom_level = 1

var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 180;
var _ypos = (_dheight / 2) - 320;
window_set_rectangle(_xpos, _ypos, 360, 640);
surface_resize(application_surface, 360, 640);