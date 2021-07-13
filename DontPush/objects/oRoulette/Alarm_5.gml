/// @description end roulette

alarm[3] = 1;

oPlayer.phy_position_x = room_width * 0.5;
oPlayer.phy_position_y = room_height * 0.5;
oPlayer.visible = true;
oPlayer.set_fixture_density(0);

mBulletSpawner.init();

mTimer.time = 15 * room_speed;

mTimer.isTimer = true;
oBlackHole.deactivate_blackHole();