/// @description Init
image_speed = 0
mine = false
image_xscale = SCALE
image_yscale = SCALE

function is_mine() 
{
	return mine
}

function set_mine() 
{
	mine = true;
	//image_index = info.mine
}

function set_value()
{
	if is_flagged() {
		return false	
	}
	if(is_mine()) 
	{
		image_index = info.red_mine;
		return true;	
	}
	if(image_index!=0) return false;
	
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x-16,y-16,x+32,y+32,obj_tile, false, true, _list, false);
	var mines_num = 0;
	
	if (_num > 0)
	{
	    for (var i = 0; i < _num; ++i;)
	    {
			if(_list[| i].is_mine()) mines_num += 1;
	    }
		image_index = mines_num + 1;
		if (mines_num==0)
		{
			for (var a = 0; a < _num; ++a;)
		    {
				_list[| a].set_value()
		    }
		}
	}
	
	ds_list_destroy(_list);
	return false
}

function is_flagged()
{
	return 	image_index==info.flag
}

function is_hidden()
{
	return image_index==info.hidden
}

function flag()
{
	Vibrate(150,255)
	
	if(is_flagged()) {
		image_index = 0;
		GameManager.flags ++
		return false
	}else if(!is_hidden()) {
		return false;	
	}
	
	//if(image_index!=0) return false;
	
	if(GameManager.flags > 0) {
		image_index = info.flag
		GameManager.flags --
	}
	
	if(GameManager.flags == 0){ //Check if All mines are flagged
		return GameManager.is_mines_flagged()
	}
	
	return false
}