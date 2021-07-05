
for (var i=0; i<ds_list_size(list); i++) {
	var block = list[| i];
	with(block) {
		var force = 0.5;
		phy_speed_y += force;
	}
	if (block.y > oRouletteDoor.y) ds_list_delete(list, i);
}