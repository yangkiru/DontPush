if (!isTimer) return;
if (time > 0) time--;
else {
	global.isReady = true;
	mBulletSpawner.alarm[0] = 1;
	oPlayer.set_fixture_density(oPlayer.density);
	isTimer = false;
}