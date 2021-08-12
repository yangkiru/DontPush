// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_button(x, y, width, height, text, script){
	var _button = instance_create_layer(x, y, "Instances", oButton);
	
	_button.width = width;
	_button.height = height;
	_button.text = text;
	_button.script = script;
	
	return _button;
}