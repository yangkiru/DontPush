if (!isTimer) return;
if (time > 0) time--;
else {
	global.isReady = true;
	mBulletSpawner.alarm[0] = 1;
	oPlayer.phy_active = true;
	isTimer = false;
}