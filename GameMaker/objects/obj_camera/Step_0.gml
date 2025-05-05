/// @description control

var _x1 = camW/2;
var _y1 = camH/2;
var _x2 = room_width - _x1;
var _y2 = room_height - _y1;


if(x<_x1) x=_x1;
if(y<_y1) y=_y1;
if(x>_x2) x=_x2;
if(y>_y2) y=_y2;

//zooming
//zoom_level += (mouse_wheel_up() - mouse_wheel_down()) * 0.2
//if(zoom_level<1)zoom_level=1;
//if(zoom_level>2)zoom_level=2;

camera_set_view_pos(view_camera[0], x-(camW*0.5),y-(camH*0.5))
//camera_set_view_size(view_camera[0],360/zoom_level,640/zoom_level)