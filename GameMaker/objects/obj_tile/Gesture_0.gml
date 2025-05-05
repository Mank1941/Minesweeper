/// @description Tap

if !global.game_inProgress exit;

if (set_value()) {
	with(GameManager) {
		gameover  = true
		smileButton.image_index = 2
		global.game_inProgress = false
	}
}