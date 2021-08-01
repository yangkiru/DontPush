level = 1;

function init() {
	count = 0;
	switch(level) {
		case 1:
			pCross.init();
		break;
	}
}

function shoot() {
	switch(level) {
		case 1:
			pCross.shoot();
			if (count < room_speed * 20)
				alarm[0] = 1;
			else
				oRoulette.alarm[0] = 1;
		break;
	}
}