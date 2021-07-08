if (!isActivate) return;
for(var i=0; i<ds_list_size(list); i++) {
	var block = list[| i];
	with(block) {
		//phy_speed_x *= 0.5;
		//phy_speed_y *= 0.5;
		var force = 0.01;
		phy_speed_x = (other.x-x)*force;
		phy_speed_y = (other.y-y)*force;
	}
}