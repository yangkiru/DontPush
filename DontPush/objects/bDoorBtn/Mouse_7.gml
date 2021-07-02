if (!oRouletteDoor.isOpen && oRoulette.isOpenable && global.money >= price) {
	global.money -= price;
	price = price == 0 ? 10 : price * 5;
	oRouletteDoor.open_door();
}