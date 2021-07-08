if (global.gameEnd) return;
oBullet1Pool.activate_obj();
alarm[0] = irandom_range(60-level, 120-level*2);
level++;