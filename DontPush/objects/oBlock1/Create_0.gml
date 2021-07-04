event_inherited();

densityArray = [0.5, 0.75, 1, 1.25];
spriteArray = [sBlock1, sBlock2, sBlock3, sBlock4];
rnd = irandom(3);
density = densityArray[rnd];

function on_activate() {
	var fix = physics_fixture_create();
	physics_fixture_set_box_shape(fix, sprite_width*0.5, sprite_height*0.5);
	physics_fixture_set_collision_group(fix, 0);
	physics_fixture_set_density(fix, density);
	physics_fixture_set_linear_damping(fix, 0.9);
	physics_fixture_set_angular_damping(fix, 0.9);
	physics_fixture_bind(fix, id)}
	
	sprite_index = spriteArray[rnd];

function on_choose() {
}