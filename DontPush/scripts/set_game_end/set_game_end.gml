// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_game_end() {
	global.gameEnd = true;
	global.isReady = false;
	with (mDeadManager) event_user(0); // create menu
	show_debug_message("player dead");
}