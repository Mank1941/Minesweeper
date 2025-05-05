/// @description Drag

if !global.game_inProgress exit;

if (alarm_get(0) == -1) {
	alarm_set(0,10)
}

