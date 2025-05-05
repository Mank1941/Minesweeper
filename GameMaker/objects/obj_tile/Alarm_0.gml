/// @description Flag
if(flag()){
	with(GameManager) {
		won = true;
		global.game_inProgress = false;
		smileButton.image_index = 1
	}
}