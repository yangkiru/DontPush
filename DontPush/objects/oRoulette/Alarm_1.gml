///// @description pop
isOpenable = true;
alarm[4] = 20; // choose
if (!isDisappear) {
	var hw = sprite_width * 0.5;
	var xx = random_range(x-hw, x+hw);
	var yy = y + sprite_height;
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

if (keyboard_check(ord("T"))) {
	alarm[5] = 1;
	alarm[1] = 0;
	alarm[4] = 0;
}