if (!isActivate) return;
for(var i=0; i<ds_list_size(list); i++) {
	var block = list[| i];
	with(block) {
		var force = 0.015;
		phy_speed_x = (other.x-x)*force;
		phy_speed_y = (other.y-y)*force;
	}
}