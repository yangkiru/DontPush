var size = ds_list_size(list);
var gap = 10;
var spd = 0.1;
for (var i=0; i<size; i++) list[| i].phy_rotation = 0;
switch (size) {
	case 1: 
		list[| 0].phy_position_x = lerp(list[| 0].phy_position_x, x, spd);
		list[| 0].phy_position_y = y;
	break;
	case 2:
		list[| 0].phy_position_x = lerp(list[| 0].phy_position_x, x - list[| 0].sprite_width * 0.5 - gap, spd);
		list[| 0].phy_position_y = y;
		list[| 1].phy_position_x = lerp(list[| 1].phy_position_x, x + list[| 1].sprite_width * 0.5 + gap, spd);
		list[| 1].phy_position_y = y;
	break;
	case 3:
		var sec_width_half = list[| 1].sprite_width * 0.5;
		list[| 0].phy_position_x = lerp(list[| 0].phy_position_x, x - sec_width_half - list[| 0].sprite_width * 0.5 - gap, spd);
		list[| 0].phy_position_y = y;
		list[| 1].phy_position_x = lerp(list[| 1].phy_position_x, x, spd);
		list[| 1].phy_position_y = y;
		list[| 2].phy_position_x = lerp(list[| 2].phy_position_x, x + sec_width_half + list[| 1].sprite_width * 0.5 + gap, spd);
		list[| 2].phy_position_y = y;
}