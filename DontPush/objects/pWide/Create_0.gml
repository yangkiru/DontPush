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
	image_angle = -dir;
	width = random_range(100, 200);
	x1 = x + lengthdir_x(width, -dir+90);
	y1 = y + lengthdir_y(width, -dir+90);
	x2 = x + lengthdir_x(width, -dir-90);
	y2 = y + lengthdir_y(width, -dir-90);
	x3 = x1 + lengthdir_x(1100, -dir);
	y3 = y1 + lengthdir_y(1100, -dir);
	x4 = x2 + lengthdir_x(1100, -dir);
	y4 = y2 + lengthdir_y(1100, -dir);
	//x3 = x + lengthdir_x((centerX+x)*0.1,-dir);
	//y3 = y + lengthdir_y((centerY+y)*0.1,-dir);
	force = 200;
	isInit = true;
}
function shoot() {
	if (!isInit) return;
	var bullet = instance_create_layer(0, 0, "Instances", oBullet1);
	var ww = random_range(0, width);
	var rnd = choose(-1, 1);
	var xx = lengthdir_x(ww, -dir+rnd * 90);
	var yy = lengthdir_y(ww, -dir+rnd * 90);
	bullet.shoot(x+xx, y+yy, dir, 200);
}