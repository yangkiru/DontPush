centerX = room_width * 0.5;
centerY = room_height * 0.5;
isInit = false;
isInOut = false;
function init() {
	isInOut = irandom(1);
	width = random_range(100, 200);
	isInit = true;
}
function shoot() {
	if (!isInit) return;
	startDir = 0;irandom(4);
	var bullet = instance_create_layer(0, 0, "Instances", oBullet1);
	var ww = random_range(0, width);
	var xx = 0, yy = 0;
	switch(startDir) {
		case 0://UpToDown
			var xx = centerX;
			var yy = 0;
		break;
		case 1://DownToUp
			var xx = centerX;
			var yy = room_height;
		break;
		case 2://LeftToRight
			var xx = 0;
			var yy = centerY;
		break;
		case 3://RightToLeft
			var xx = room_width;
			var yy = centerY;
		break;
	}
	
	var dir = point_direction(centerX, centerY, xx, yy);
	var rnd = choose(-1, 1);
	//var xx = xx+lengthdir_x(ww, -dir+rnd * 90);
	//var yy = yy+lengthdir_y(ww, -dir+rnd * 90);
	bullet.shoot(xx, yy, -dir, 200);
}