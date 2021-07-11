if (global.gameEnd) return;
var bullet = instance_create_layer(0, 0, "Instances", oBullet1);
bullet.on_activate();
alarm[0] = irandom_range(60-level, 120-level*2);
level++;