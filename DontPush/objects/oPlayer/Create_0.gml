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

function set_game_end() {
	global.gameEnd = true;
	show_debug_message("player dead");
}

init_fixture();

global.gameEnd = false;
visible = false;
density = 0.5;
