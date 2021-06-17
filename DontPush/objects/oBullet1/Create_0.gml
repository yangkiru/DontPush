function bullet_init() {
	var force = 200;
	var pd = point_direction(phy_position_x, phy_position_y, oPlayer.x, oPlayer.y);
	var lx = lengthdir_x(force, pd);
	var ly = lengthdir_y(force, pd);
	phy_angular_velocity = 0;
	phy_rotation = -pd;
	phy_speed_x = 0;
	phy_speed_y = 0;
	physics_apply_local_impulse(0, 0, force, 0);
	alarm[0] = 10;
}

function on_activate() {
	var xy = irandom(1);
	show_debug_message(xy);
	phy_position_x = xy ? (random(1) ? 0 : room_width) : random(room_width);
	phy_position_y = xy ? random(room_height) : (random(1) ? 0 : room_height);
	bullet_init();
}

pool = oBullet1Pool;
isInit = false;