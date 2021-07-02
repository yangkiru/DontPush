var list = oRoulette.list;
for (var i=0; i<ds_list_size(list); i++) {
	var block = list[| i];
	if (block.y > y) {
		global.rBlock++;
		oRoulette.remove_block_roulette(block.id);
	}
}
if (global.rBlock > count) {
	close_door();
}