/// @description Game Run Time
if !global.game_inProgress exit;
game_runTime++
alarm[1] = game_get_speed(gamespeed_fps)