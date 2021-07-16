event_inherited();

densityArray = [2, 5, 10, 25]; // 밀도
spriteArray = [sBlock2_1, sBlock2_2, sBlock2_3, sBlock2_4];
rnd = irandom(3);
density = densityArray[rnd];
fix = noone;
fixGap = noone;
function on_activate() {
	var f = physics_fixture_create();
	physics_fixture_set_box_shape(f, sprite_width*0.5, sprite_height*0.5);
	physics_fixture_set_collision_group(f, 1);
	physics_fixture_set_density(f, 1);
	physics_fixture_set_linear_damping(f, 0.9);
	physics_fixture_set_angular_damping(f, 0.9);
	fix = physics_fixture_bind(f, id);
	physics_fixture_delete(f);
	
	sprite_index = spriteArray[rnd];
}

function on_choose() {
	if (fix != noone)
		physics_remove_fixture(id, fix);
	var f = physics_fixture_create();
	physics_fixture_set_box_shape(f, sprite_width*0.5, sprite_height*0.5);
	physics_fixture_set_collision_group(f, 2);
	physics_fixture_set_density(f, density);
	physics_fixture_set_linear_damping(f, 2); // 선형 감속
	physics_fixture_set_angular_damping(f, 10); // 회전 감속
	fix = physics_fixture_bind(f, id);
	physics_fixture_delete(f);
}