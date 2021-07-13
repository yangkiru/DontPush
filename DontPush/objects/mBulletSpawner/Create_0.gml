level = 1;

function init() {
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
			alarm[0] = 1;
		break;
	}
}