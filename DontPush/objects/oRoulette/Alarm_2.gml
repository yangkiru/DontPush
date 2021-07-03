/// @description appear
var next = lerp(x, room_width * 0.5, 0.1);
var dist = next - x;
phy_position_x = next;
for (var i=0; i<ds_list_size(list); i++) {
	list[| i].phy_position_x += dist;
}
oRouletteDoor.phy_position_x += dist;
if (!isOpenable) alarm[2] = 1;