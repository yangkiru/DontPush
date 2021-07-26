global.money += 1;
var pdir = -phy_rotation;
var r = collision_line_point(x, y, other.x, other.y, cBlock, 1, 0);
if(r[0] != noone) {
	var eff = instance_create_layer(r[1], r[2], "Instances", eBullet1Sharp);
	eff.depth = depth-1;
	eff.image_angle = pdir;
}
instance_destroy(id);