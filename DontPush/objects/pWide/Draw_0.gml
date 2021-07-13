if (!isInit) return;

draw_self();
draw_set_color(c_black);
draw_triangle(x+x1,y+y1,x+x3,y+y3,x+x2,y+y2,0);
//draw_sprite_ext(sBulletArrow, -1, x, y, 1, 1, image_angle+90, c_white, 1);