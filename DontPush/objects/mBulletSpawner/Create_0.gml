level = 1;

function init() {
	count = 0;
	switch(level) {
		case 1:
			pWide.init();
		break;
	}
}

function shoot() {
	switch(level) {
		case 1:
			pWide.shoot();
			if (count < room_speed * 20)
				alarm[0] = 1;
			else
				oRoulette.alarm[0] = 1;
		break;
	}
}