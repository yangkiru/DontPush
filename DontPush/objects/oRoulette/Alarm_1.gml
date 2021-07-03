///// @description pop corn
isOpenable = true;
if (!oRouletteDoor.isOpen) {
	var xx = random_range(oRouletteDoor.x - oRouletteDoor.sprite_width*0.5, oRouletteDoor.x + oRouletteDoor.sprite_width*0.5);
	var yy = oRouletteDoor.y;
	oPlayer.phy_position_x = xx;
	oPlayer.phy_position_y = yy;
	for (var i=0; i<ds_list_size(list); i++) {
		var block = list[| i];
		with(block) {
			var force = 300;
			var dist = distance_to_point(xx, yy);
			if (dist == 0) continue;
			physics_apply_impulse(xx, yy, (x-xx)*force/dist, (y-yy)*force/dist);
		}
	}
}
alarm[1] = 80;

