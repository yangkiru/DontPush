for (var i=0; i<ds_list_size(list); i++) {
	var block = list[| i];
	with(block) {
		var force = 350;
		var xx = 0;
		var yy = force;
		physics_apply_force(x, y, xx, yy);
	}
}