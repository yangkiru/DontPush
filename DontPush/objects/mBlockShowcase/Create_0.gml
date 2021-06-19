function add_block_showcase(pool) {
	var block = pool.activate_obj();
	block.phy_position_x = room_width;
	block.phy_position_y = y;
	ds_list_add(list, block);
}

function remove_block_showcase(index) {
	if (ds_list_empty(list)) return;
	show_debug_message("remove" + string(index));
	var block = list[| index];
	with (block) {
		on_choose();
		var pos = sprite_width * 0.2;
		physics_apply_impulse(random_range(x-pos, x+pos), y, 0, 7000);
	}
	ds_list_delete(list, index);
}

x = room_width * 0.5;
y = room_height * 0.7;
list = ds_list_create();