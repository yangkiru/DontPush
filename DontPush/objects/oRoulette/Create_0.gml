radius = 175;

list = ds_list_create();

x = 0 - sprite_width;
y = room_height * 0.25;
dir = 0;
isOpenable = false;
isDisappear = false;
chooseAmount = 7;
chooseCurrent = chooseAmount;

function init() {
	isOpenable = false;
	isDisappear = false;
	chooseCurrent = chooseAmount;
	phy_position_x = 0 - sprite_width;
	phy_position_y = room_height * 0.25;
	oRouletteDoor.phy_position_x = phy_position_x;
	oRouletteDoor.phy_position_y = phy_position_y;
	ds_list_clear(list);
	repeat(20)
		add_block_roulette(choose(oBlock1, oBlock2));
	alarm[1] = irandom_range(90, 120);
	alarm[2] = 1;

	oPlayer.visible = false;
	oPlayer.phy_active = false;
	oPlayer.phy_position_x = room_width * 0.5;
	oPlayer.phy_position_y = room_height * 0.5;
}

function add_block_roulette(obj) {
	var dir = random(360);
	var len = random_range(radius * 0.2, radius-20);
	var xx = lengthdir_x(len, dir);
	var yy = lengthdir_y(len, dir);
	var block = instance_create_layer(phy_position_x+xx, phy_position_y+yy,"Instances",obj);
	block.on_activate();
	block.phy_rotation = -dir;
	
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
	ds_list_delete(list, ds_list_find_index(list,block));
	block.on_choose();
	block.isRoulette = false;
	oBlackHole.add_block_blackhole(block);
	oBlackHole.isActivate = true;
}

//create_fixture_sphere(0, 360, 10);
create_fixture_sphere(-60, 240, 10);
init();