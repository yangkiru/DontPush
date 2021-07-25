global.money += 1;
var eff = instance_create_layer(x, y, "Instances", eBullet1Sharp);
eff.depth = depth-1;
eff.image_angle = -phy_rotation;
instance_destroy(id);