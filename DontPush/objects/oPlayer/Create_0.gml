function set_game_end() {
	global.gameEnd = true;
	show_debug_message("player dead");
}

global.gameEnd = false;
phy_active = false;
visible = false;