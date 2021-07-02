function on_activate() {
	var fix = physics_fixture_create();
	physics_fixture_set_box_shape(fix, sprite_width*0.5, sprite_height*0.5);
	physics_fixture_set_collision_group(fix, 0);
	physics_fixture_bind(fix, id);
}

function on_choose() {
	var fix = physics_fixture_create();
	physics_fixture_set_box_shape(fix, sprite_width*0.5, sprite_height*0.5);
	physics_fixture_set_collision_group(fix, 1);
	physics_fixture_bind(fix, id);
}

pool = oBlock1Pool;
isInventory = false;
isHandle = false;
isRoulette = false;
isBounce = false;