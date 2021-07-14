if (!isInit) return;

//draw_self();
//draw_set_color(c_black);
//draw_triangle(x1,y1,x2,y2,x3,y3,0);
draw_set_colour(c_white);
var tex = sprite_get_texture(Sprite13, 0);
draw_set_alpha(1);
gpu_set_tex_repeat(true);
draw_primitive_begin_texture(pr_trianglestrip, tex);
draw_vertex_texture(x1, y1, 0, 5); // 좌측 하단
draw_vertex_texture(x2, y2, 1, 5); // 우측 하단
draw_vertex_texture(x3, y3, 0, 0); // 좌측 상단
draw_vertex_texture(x4, y4, 1, 0); // 우측 상단
draw_primitive_end();
gpu_set_tex_repeat(false);
draw_set_alpha(1);
//draw_sprite_ext(sBulletArrow, -1, x, y, 1, 1, image_angle+90, c_white, 1);