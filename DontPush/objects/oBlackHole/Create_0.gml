list = ds_list_create();
x = room_width * 0.5;
y = room_height * 0.75;
isActivate = true;

function add_block_blackhole(block) {
	ds_list_add(list, block);
	var f = physics_fixture_create();
	with (block) {
		accel = 1;
		physics_fixture_set_circle_shape(f, sprite_width);
		physics_fixture_set_collision_group(f, 2);
		physics_fixture_set_density(f, 0);
		physics_fixture_set_linear_damping(f, 0);
		physics_fixture_set_angular_damping(f, 0);
		fixGap = physics_fixture_bind(f, id);
		physics_fixture_delete(f);
	}
}

function remove_block_blackhole(block) {
	if (block.fixGap != noone)
		physics_remove_fixture(block, block.fixGap);
}

function deactivate_blackHole() {
	isActivate = false;
	for (var i=0; i<ds_list_size(list); i++) {
		var block = list[| i];
		block.phy_speed_x = 0;
		block.phy_speed_y = 0;
		block.phy_angular_velocity = 0;
		remove_block_blackhole(block);
	}
	
	ds_list_clear(list);
}