if (isHandle) {
	phy_position_x = mouse_x;
	phy_position_y = mouse_y;
	phy_rotation += 3;
}

if (isRoulette) {
	if (phy_position_y > room_height * 0.5) {
		global.rBlock++;
		isRoulette = false;
	}
	
}