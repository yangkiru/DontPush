/// @description disappear
var next = lerp(x, room_width + sprite_width, 0.03);
var dist = next - x;
phy_position_x = next;
isDisappear = true;
for (var i=0; i<ds_list_size(list); i++) {
	list[| i].phy_position_x += dist;
}
oRouletteDoor.phy_position_x += dist;
if (room_width + sprite_width - x > 100 ) alarm[3] = 1;