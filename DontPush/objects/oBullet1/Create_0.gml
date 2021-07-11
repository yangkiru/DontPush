function bullet_init() {
	var force = 200;
	var pd = point_direction(phy_position_x, phy_position_y, mouse_x, mouse_y);
	var lx = lengthdir_x(force, pd);
	var ly = lengthdir_y(force, pd);
	phy_bullet = true;
	phy_angular_velocity = 0;
	phy_rotation = -pd;
	phy_speed_x = 0;
	phy_speed_y = 0;
	physics_apply_local_impulse(0, 0, force, 0);
	isInit = false;
	alarm[0] = 60;
}

function on_activate() {
	var xy = irandom(1);
	phy_position_x = xy ? (random(1) ? 0 : room_width) : random(room_width);
	phy_position_y = xy ? random(room_height) : (random(1) ? 0 : room_height);
	bullet_init();
}

isInit = false;