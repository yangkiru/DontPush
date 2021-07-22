/// @description init blocks
init();
with(cBlock) {
	instance_destroy(id);
}
repeat(20)
	add_block_roulette(choose(oBlock1, oBlock2));
alarm[1] = irandom_range(90, 120);
alarm[2] = 1;

oPlayer.visible = false;
oPlayer.phy_active = false;
oPlayer.phy_position_x = room_width * 0.5;
oPlayer.phy_position_y = room_height * 0.5;