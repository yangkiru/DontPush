centerX = room_width * 0.5;
centerY = room_height * 0.5;

startPosX = choose(0, centerX, room_width);
startPosY = choose(0, centerY, room_height);
if (startPosX == centerX && startPosY == centerY) {
	var rnd = irandom(2); // 2이면 둘다 선택 X
	startPosX = rnd == 0 ? startPosX : choose(0, room_width);
	startPosY = rnd == 1 ? startPosY : choose(0, room_height);
}
x = startPosX;
y = startPosY;

image_xscale *= 3;
image_yscale *= 3;



dir = -point_direction(startPosX, startPosY, centerX, centerY);
width = random(500);
force = 200;
function shoot() {
	
	var bullet = instance_create_layer(0, 0, "Instances", oBullet1);
	var dirWidth = choose(-90, 90);
	var ww = random_range(-width, width);
	var xx = lengthdir_x(ww, dir + dirWidth);
	var yy = lengthdir_y(ww, dir + dirWidth);
	bullet.shoot(x+xx, y+yy, dir, 200);
	//bullet.shoot(x, y, -dir, 200);
}