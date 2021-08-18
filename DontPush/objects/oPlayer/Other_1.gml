if (!global.gameEnd) {
	instance_create_layer(x, y, "Instances", ePlayerDie);
	set_game_end();
}