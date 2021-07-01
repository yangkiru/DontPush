if (!isOpen) {
	with (other) {
		var dir = point_direction(x, y, oRoulette.x, oRoulette.y) + random_range(-20, 20);
		var force = 200;
		var xx = lengthdir_x(force, dir);
		var yy = lengthdir_y(force, dir);
		physics_apply_impulse(x, y, xx, yy);
	}
}