#macro SCALE 1.375
#macro TILESIZE (16 * SCALE)
#macro PORTW 360
#macro PORTH 640

enum info {
	flag = 13,
	mine = 10,
	red_mine = 11,
	hidden = 0
}

//#macro thisInfo (tilemap_get(info_map, _x, _y))

//#macro adjacents global._adj
global.fontDigits = font_add_sprite_ext(spr_digits, "0123456789-", true,0);

enum ui_colors {
	white,
	orange,
	yellow,
	blue,
	green
};

