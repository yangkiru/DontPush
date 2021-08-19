x += lengthdir_x(spd, image_angle+90);
y += lengthdir_y(spd, image_angle+90);
image_alpha -= alphaSpd;
if (image_alpha <= 0) instance_destroy(id);