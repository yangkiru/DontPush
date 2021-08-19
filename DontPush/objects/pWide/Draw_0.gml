if (!isInit || global.isReady) return;
else if (random(1) > (0.05 * width)){
	var ww = random_range(0, sprite_width * 0.5);
	var rnd = choose(-1, 1);
	var xx = lengthdir_x(ww, -dir+rnd * 90);
	var yy = lengthdir_y(ww, -dir+rnd * 90);
	var arrow = instance_create_layer(x+xx, y+yy, "Instances", eArrow);
	arrow.image_angle = image_angle;
	
}
show_debug_message((0.05 * width));