sprite_index = choose(sBulletEf1,sBulletEf2,sBulletEf3);
image_speed = 2;
var circle = instance_create_layer(x, y, "Instances", eBullet1Circle);
circle.image_angle = image_angle;
circle.depth = depth - 1;