/// @description Room Start

switch (os_type) {
    case os_windows:
        // code here
        break;
    default:
        var _w = display_get_width()
		var _h = display_get_height();
		var _r = _h / _w
		room_height = room_width * _r;
		surface_resize(application_surface, room_width, room_height)
        break;
}



setup_ui_assets() 

setup_board()

set_mines()
