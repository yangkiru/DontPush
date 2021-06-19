if (!keyboard_check(vk_shift))
	add_block_showcase(oBlock1Pool);
else
	remove_block_showcase(irandom(ds_list_size(list)-1));