global.money += 1;
var pdir = -phy_rotation;
var eff = instance_create_layer(x, y, "Instances", eBullet1Sharp);
eff.depth = depth-1;
eff.image_angle = pdir;

instance_destroy(id);