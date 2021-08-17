image_speed = 0.1;
centerX = room_width * 0.5;
centerY = room_height * 0.5;
isInit = false;
function init() {
	startPosX = choose(0, centerX, room_width);
	startPosY = choose(0, centerY, room_height);
	if (startPosX == centerX && startPosY == centerY) {
		var rnd = irandom(2); // 2이면 둘다 선택 X
		startPosX = rnd == 0 ? startPosX : choose(0, room_width);
		startPosY = rnd == 1 ? startPosY : choose(0, room_height);
	}
	x = startPosX;
	y = startPosY;


	dir = -point_direction(startPosX, startPosY, centerX, centerY);
	image_angle = -dir-90; 
	width = random_range(5, 10);
	
	image_xscale = width; // sprite_width이 자동으로 바뀜
	
	force = 200;
	isInit = true;
}
function shoot() {
	if (!isInit) return;
	var bullet = instance_create_layer(0, 0, "Instances", oBullet1);
	var ww = random_range(0, sprite_width * 0.5);
	var rnd = choose(-1, 1);
	var xx = lengthdir_x(ww, -dir+rnd * 90);
	var yy = lengthdir_y(ww, -dir+rnd * 90);
	bullet.shoot(x+xx, y+yy, dir, 200);
}