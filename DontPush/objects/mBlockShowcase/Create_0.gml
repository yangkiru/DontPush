function add_block_showcase(pool) {
	var block = pool.activate_obj();
	block.phy_position_x = room_width;
	block.phy_position_y = y;
	block.phy_active = false;
	block.isInventory = false;
	block.image_index = random(block.image_number);
	ds_list_add(list, block);
}

function remove_block_showcase(index) {
	if (ds_list_empty(list)) return;
	if (oInventory.is_full_inventory()) return;
	var block = list[| index];
	block.on_choose();
	oInventory.add_block_inventory(block);
	ds_list_delete(list, index);
	add_block_showcase(oBlock1Pool);
}

function remove_block_showcase_random() {
	remove_block_showcase(irandom(ds_list_size(list)-1));
}

x = room_width * 0.5;
y = room_height * 0.7;
list = ds_list_create();
repeat(3) add_block_showcase(oBlock1Pool);