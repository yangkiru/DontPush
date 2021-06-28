for (var i=0; i<ds_list_size(list); i++) {
	var block = list[| i];
	with(block) physics_apply_force(x, y, 0, 200);
}