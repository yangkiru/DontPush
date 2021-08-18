function init_fixture() {
	f = physics_fixture_create();
	physics_fixture_set_circle_shape(f, sprite_width*0.5);
	physics_fixture_set_collision_group(f, 2);
	physics_fixture_set_density(f, 0);
	physics_fixture_set_linear_damping(f, 0.9);
	physics_fixture_set_angular_damping(f, 0.5);
	fix = physics_fixture_bind(f, id);
}

function set_fixture_density(val) {
	if (fix != noone) physics_remove_fixture(id, fix);
	physics_fixture_set_density(f, val);
	fix = physics_fixture_bind(f, id);
}

init_fixture();
phy_active = false;
oPlayer.phy_position_x = room_width * 0.5;
oPlayer.phy_position_y = room_height * 0.5;
global.gameEnd = false;
visible = false;
density = 0.5;
