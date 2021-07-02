var list = oRoulette.list;
for (var i=0; i<ds_list_size(list); i++) {
	var block = list[| i];
	if (block.y > y) {
		passed++;
		oRoulette.remove_block_roulette(block.id);
	}
}
if (passed > count) {
	close_door();
}