radius = 175;

list = ds_list_create();


x = 0 - sprite_width;
y = room_height * 0.25;
global.rBlock = 0;
dir = 0;
isOpenable = false;
isDisappear = false;
pop = 3;
chooseAmount = 7;
chooseCurrent = chooseAmount;
deactivateTime = 0;

function add_block_roulette(pool) {
	var block = pool.activate_obj();
	var dir = random(360);
	var len = random_range(radius * 0.2, radius-20);
	var xx = lengthdir_x(len, dir);
	var yy = lengthdir_y(len, dir);
	
	block.phy_rotation = -dir;
	
	block.phy_position_x = x+xx;
	block.phy_position_y = y+yy;
	
	block.isRoulette = true;
	
	ds_list_add(list, block);
}

function remove_block_roulette(block) {
	ds_list_delete(list, ds_list_find_index(list, block));
}

function create_fixture_sphere(startAngle, lastAngle, piece) {
	var angle = startAngle;
	var xx = 0, yy = 0;
	var fix = physics_fixture_create(); physics_fixture_set_chain_shape(fix, false);
	var inc =  abs(startAngle-lastAngle) / piece;
	for (var i = 0; i < piece+1; i++;) {
		xx = lengthdir_x(radius, angle);
		yy = lengthdir_y(radius, angle);
		physics_fixture_add_point(fix, xx, yy-5);
		angle += inc;
	}
	physics_fixture_bind(fix, id);
	physics_fixture_delete(fix);
}

function choose_block(block) {
	block.on_choose();
	oBlackHole.add_block_blackhole(block);
}

//create_fixture_sphere(0, 360, 10);
create_fixture_sphere(-60, 240, 10);
alarm[0] = 2;