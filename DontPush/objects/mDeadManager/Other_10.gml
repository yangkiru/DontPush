var _width = 300;
var _height = 100;
var _halfWidth = _width * 0.5;
var _halfHeight = _height * 0.5;
var _gap = 40*global.hh;
var _centerW = global.winW * 0.5;
var _centerH = global.winH * 0.5;
create_button(_centerW/global.ww - _halfWidth, _centerH/global.hh - _halfHeight - _gap - _height, _width, _height, "Restart", on_click_restart);

create_button(_centerW/global.ww - _halfWidth, _centerH/global.hh - _halfHeight, _width, _height, "Shop", on_click_shop);

create_button(_centerW/global.ww - _halfWidth, _centerH/global.hh - _halfHeight + _gap + _height, _width, _height, "Quit", on_click_quit);