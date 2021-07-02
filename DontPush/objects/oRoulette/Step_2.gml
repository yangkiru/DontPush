for (var i=0; i<ds_list_size(list); i++) {
	var block = list[| i];
	with(block) {
		var force = 200;
		var xx = 0;
		var yy = force;
		//var xx = lengthdir_x(force, other.dir);
		//var yy = lengthdir_y(force, other.dir);
		physics_apply_force(x, y, xx, yy);
	}
}