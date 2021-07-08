if (isHandle) {
	phy_position_x = mouse_x;
	phy_position_y = mouse_y;
	phy_speed_x = 0;
	phy_speed_y = 0;
	phy_rotation = lerp(phy_rotation, 0, 0.1);
	show_debug_message(phy_rotation);
}