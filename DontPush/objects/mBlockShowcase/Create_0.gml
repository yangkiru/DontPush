function add_block_showcase(pool) {
	var data = [];
	data[0] = pool;
	data[1] = irandom(array_length(pool.sprList));
	ds_list_add(list, data);
}
x = room_width * 0.5;
y = room_height * 0.5;
list = ds_list_create();
add_block_showcase(oBlock1Pool);
//add_block_showcase(oBlock1Pool);
//add_block_showcase(oBlock1Pool);
//add_block_showcase(oBlock1Pool);
//add_block_showcase(oBlock1Pool);
//add_block_showcase(oBlock1Pool);

