
for(var i=0; i<ds_list_size(list); i++) {
	var block = list[| i];
	with(block) {
		phy_speed_x *= 0.9;
		phy_speed_y *= 0.9;
		var force = 0.001;
		//var dist = distance_to_point(xx, yy);
		//if (dist == 0) continue;
		phy_speed_x += (other.x-x)*force;
		phy_speed_y += (other.y-y)*force;
	}
}