if (global.gameEnd) return;
oBullet1Pool.activate_obj();
alarm[0] = irandom_range(120-level, 240-level*2);
level++;