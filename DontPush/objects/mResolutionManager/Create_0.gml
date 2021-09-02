window_set_color(make_color_rgb(255,161,0));

base_w = 540;
base_h = 960;

function init(){
	global.winW = window_get_width();
	global.winH = window_get_height();
	var aspect = global.winW / global.winH;
	if (aspect > 1)
	{
		//landscape
		ww = base_h * aspect;
		hh = base_h;
		global.ww = (global.winW / ww);
		global.hh = (global.winH / hh);
		display_set_gui_maximise(global.ww, global.hh, 0, 0);
	}
	else
	{
		//portrait
		ww = base_w;
		hh = base_w / aspect;
		global.ww = (global.winW / ww);
		global.hh = (global.winH / hh);
		display_set_gui_maximise(global.ww, global.hh, 0, 0);
	}
}
init();