if (isHandle && isWhite > 10) {
	gpu_set_fog(true,c_white,0,0);
	//draw code
	draw_self();
	gpu_set_fog(false,c_black,0,0);
} else
	draw_self();
isWhite = (++isWhite)%20;