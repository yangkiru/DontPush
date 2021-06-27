x = room_width * 0.5;
y = room_height * 0.25;

offsetY = -10;
radius = 175;

list = ds_list_create();

function add_block_roulette(pool) {
	var block = pool.activate_obj();
	var dir = random(360);
	var len = random_range(radius * 0.5, radius-20);
	var xx = lengthdir_x(len, dir);
	var yy = lengthdir_y(len, dir);
	
	block.phy_rotation = -dir;
	
	block.phy_position_x = x+xx;
	block.phy_position_y = y+yy;

	with(block) physics_apply_local_impulse(0, 0, 100, 0);
	
	ds_list_add(list, block);
}

//repeat(5) add_block_roulette(oBlock1Pool);