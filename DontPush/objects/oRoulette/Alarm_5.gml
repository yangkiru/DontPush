/// @description end roulette

alarm[3] = 1;

oPlayer.visible = true;
oPlayer.phy_active = true;
oPlayer.set_fixture_density(0);

mBulletSpawner.init();
mTimer.onTimer = sTimerOnReady;
mTimer.time = 20 * room_speed;

mTimer.isTimer = true;
oBlackHole.deactivate_blackHole();