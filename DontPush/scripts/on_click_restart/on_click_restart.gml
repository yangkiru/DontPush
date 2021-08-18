// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function on_click_restart(){
	show_debug_message("Button clicked: " + text);
	with(cBlock) instance_destroy(id);
	oRoulette.init();
	
	instance_destroy(oButton);
}