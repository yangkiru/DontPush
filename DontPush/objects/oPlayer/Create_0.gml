function set_game_end() {
	global.gameEnd = true;
	show_debug_message("player dead");
}

global.gameEnd = false;
phy_position_x = room_width * 0.5;
phy_position_y = room_height * 0.25;