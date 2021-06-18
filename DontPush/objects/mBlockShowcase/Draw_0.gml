var xx = x;
var width = 0;
var gap = 0;
var scale = 0.5;
var size = ds_list_size(list);
for(var i = 0; i < size; i++) {
	var data = list[| i];
	var pool = data[0];
	var sprIndex = data[1];
	var spr = pool.sprList[sprIndex];
	
	var sprWidth = sprite_get_width(spr) * scale;
	width += sprWidth + gap;
}
xx -= width * 0.5;
for(var i = 0; i < size; i++) {
	var data = list[| i];
	var pool = data[0];
	var sprIndex = data[1];
	var spr = pool.sprList[sprIndex];
	
	var sprWidth = sprite_get_width(spr) * scale;
	draw_sprite_ext(spr, -1, xx, y, scale, scale, 0, c_white, 1);
	xx += sprWidth + gap;
}