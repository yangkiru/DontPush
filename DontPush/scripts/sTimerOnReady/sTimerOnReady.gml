// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sTimerOnReady(){
	global.isReady = true;
	mBulletSpawner.alarm[0] = 1;
	oPlayer.set_fixture_density(oPlayer.density);
	mTimer.time = 20 * room_speed;
	onTimer = sTimerOnEnd;
	with(eArrow) alphaSpd *= 5;
}