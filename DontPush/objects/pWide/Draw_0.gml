if (!isInit) return;

//draw_self();
//draw_set_color(c_black);
//draw_triangle(x1,y1,x2,y2,x3,y3,0);
draw_set_colour(c_white);
var tex = sprite_get_texture(sArrow, 0);
draw_set_alpha(1);
gpu_set_tex_repeat(true);
draw_primitive_begin_texture(pr_trianglestrip, tex);
var xx1 = x1;
var xx2 = x1+sprite_width;
var yy1 = y1;
var yy2 = y1+sprite_height;
for (var i = 0; i < width * 0.1; i++) {
	draw_vertex_texture(xx1, yy1, 0, 1); // 좌측 하단
	draw_vertex_texture(xx2, yy1, 1, 1); // 우측 하단
	draw_vertex_texture(xx1, yy2, 0, 0); // 좌측 상단
	draw_vertex_texture(xx2, yy2, 1, 0); // 우측 상단
	xx1 += sprite_width;
	xx2 += sprite_width;
	yy1 += sprite_height;
	yy2 += sprite_height;
}
draw_primitive_end();
gpu_set_tex_repeat(false);
draw_set_alpha(1);
//draw_sprite_ext(sBulletArrow, -1, x, y, 1, 1, image_angle+90, c_white, 1);