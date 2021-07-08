event_inherited();

densityArray = [1, 2, 5, 15];
spriteArray = [sBlock1, sBlock2, sBlock3, sBlock4];
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
	physics_fixture_set_linear_damping(f, 2);
	physics_fixture_set_angular_damping(f, 10);
	fix = physics_fixture_bind(f, id);
	physics_fixture_delete(f);
}