phy_position_x = oRoulette.x;
phy_position_y = oRoulette.y + 177;
isOpen = false;
count = 3;
passed = 0;

function open_door() {
	if (oRoulette.isOpenable) {
		isOpen = true;
		phy_active = false;
		passed = 0;
	}
}

function close_door() {
	isOpen = false;
	phy_active = true;
}