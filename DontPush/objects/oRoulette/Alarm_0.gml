/// @description init blocks
init();
repeat(20) add_block_roulette(oBlock1);
alarm[1] = irandom_range(90, 120);
alarm[2] = 1;

oPlayer.visible = false;
oPlayer.phy_active = false;