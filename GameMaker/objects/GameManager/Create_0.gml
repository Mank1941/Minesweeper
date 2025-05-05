/// @description Init Game
// max 30x16
grid_h = 26 //Height
grid_w = 16  //Width
grid_m = 34 //Mines
flags = grid_m;
mines = array_create(0)

b_padd = 4; //Padding in Box
bX = b_padd; //Position of board
bY = 0; 
bW = PORTW //Box width
bH = PORTH
//board_w = grid_w * TILESIZE;
//board_h = grid_h * TILESIZE;

gameover = false
won = false;
randomize()

game_runTime = 0
global.game_inProgress = true
alarm[1] = game_get_speed(gamespeed_fps)

smileButton = noone
//timer = noone;
//flagCount = noone;

//Set Up UI Assets in room
function setup_ui_assets() 
{
	var topbox_padd = 5
	var lay_id = layer_get_id("Assets");
	
	//var _top_box = layer_sprite_create("Assets",0,0,spr_box)

	var _h = (topbox_padd*2) + (25*SCALE);

	smileButton = instance_create_layer(bW/2,topbox_padd,"Instances", obj_smileButton)
	smileButton.image_xscale = SCALE
	smileButton.image_yscale = SCALE


	bH = PORTH - _h;  //Remaining space for the bottom box
	
	bX = (room_width/2) - (bW/2);
	bY = (((room_height-_h)/2) - (bH/2)) + _h;

	var _board = layer_sprite_create("Assets", bX,bY,spr_box)
	layer_sprite_xscale(_board, bW/32);
	layer_sprite_yscale(_board, bH/32);
	
	obj_camera.x = bX + (bW/2);
	obj_camera.y = bY + (bH/2) - (_h/2)

}

function setup_board()
{
	var _x = bX + b_padd;
	var _y = bY + b_padd;
	
	for (var a = 0; a < grid_w; ++a) {
	for (var b = 0; b < grid_h; ++b) {
			instance_create_layer(_x+(TILESIZE*a),_y+(TILESIZE*b),"Tile_instances",obj_tile)
		}
	}
}

function set_mines() 
{
	repeat(grid_m) {
		var _x, _y, _tile;
		do {
			_x = irandom(grid_w - 1);
			_y = irandom(grid_h - 1);
			_tile = instance_position((_x*TILESIZE)+bX+b_padd, (_y*TILESIZE)+bY+b_padd, obj_tile)
		} until(!_tile.is_mine());
	
		_tile.set_mine()
		array_push(mines, _tile)
	}	
}

function in_bounds(_x, _y)
{
	return (_x >= 0 && _y >= 0 && _x < grid_w && _y < grid_h)	
}

function is_mines_flagged()
{
	for (var i = 0; i < array_length(mines); ++i) {
	    if(!mines[i].is_flagged()){
			return false;
		}
	}
	return true;
}



