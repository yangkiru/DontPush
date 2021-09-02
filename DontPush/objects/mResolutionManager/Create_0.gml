window_set_color(make_color_rgb(255,161,0));

var base_w = 540;
var base_h = 960;
var aspect = window_get_width() / window_get_height();
if (aspect > 1)
{
	//landscape
	ww = base_h * aspect;
	hh = base_h;
	global.ww = (window_get_width() / ww);
	global.hh = (window_get_height() / hh);
	display_set_gui_maximise(global.ww, global.hh, 0, 0);
}
else
{
	//portrait
	ww = base_w;
	hh = base_w / aspect;
	global.ww = (window_get_width() / ww);
	global.hh = (window_get_height() / hh);
	display_set_gui_maximise(global.ww, global.hh, 0, 0);
}

