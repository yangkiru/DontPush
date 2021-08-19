if (!global.gameEnd && (phy_position_x <= 0 || phy_position_x >= room_width || phy_position_y <= 0 || phy_position_y >= room_height)){
	instance_create_layer(x, y, "Instances", ePlayerDie);
	set_game_end();
}