with(other) {
	var dir = point_direction(x, y, other.x, other.y);
	var force = 100;
	var xx = lengthdir_x(force, dir);
	var yy = lengthdir_y(force, dir);
	physics_apply_impulse(x, y, xx, yy);
}