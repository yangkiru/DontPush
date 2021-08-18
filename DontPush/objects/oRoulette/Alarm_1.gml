///// @description pop
isOpenable = true;
alarm[4] = 20; // choose
if (!isDisappear) {
	var xx = random_range(oRouletteDoor.x - oRouletteDoor.sprite_width*0.5, oRouletteDoor.x + oRouletteDoor.sprite_width*0.5);
	var yy = oRouletteDoor.y;
	for (var i=0; i<ds_list_size(list); i++) {
		var block = list[| i];
		with(block) {
			var force = 20;
			var dist = distance_to_point(xx, yy);
			if (dist == 0) continue;
			phy_speed_x += (x-xx)*force/dist;
			phy_speed_y += (y-yy)*force/dist;
		}
	}
}
if (--chooseCurrent > 0) {
	alarm[1] = 80;
} else {
	alarm[5] = 180;
}
	//oRouletteDoor.open_door();