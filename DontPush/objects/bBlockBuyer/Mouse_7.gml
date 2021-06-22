if (global.money >= price) {
	global.money -= price++;
	mBlockShowcase.remove_block_showcase_random();
}