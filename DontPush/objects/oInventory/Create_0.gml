function add_block_inventory(block) {
	ds_list_add(list, block);
	listSize = ds_list_size(list);
	centerPoint = get_center_list(list);
	block.isInventory = true;
}

function remove_block_inventory(block) {
	var idx = ds_list_find_index(list, block.id);
	ds_list_delete(list, idx);
	listSize--;
}

function objects_center_align() {
	var sum = x;
	var spd = 0.1;
	for (var i=0; i<listSize; i++) {
		var obj = list[| i];
		var newX = (sum + (obj.sprite_width * 0.5)) - centerPoint;
		obj.phy_position_x = lerp(obj.x, newX, spd);
		obj.phy_position_y = lerp(obj.y, y, spd);
		
		sum += obj.sprite_width;
	}
}

function get_center_list(list) {
	var size = ds_list_size(list);
	var sum = 0;
	for (var i=0; i<size; i++) {
		sum += list[| i].sprite_width;
	}
	return sum * 0.5;
}

slotSize = 4;
list = ds_list_create();
listSize = 0;
x = room_width * 0.5;
y = room_height * 0.8;
centerPoint = x;