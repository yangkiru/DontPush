function is_animation_end(){
	return (image_index >= image_number - (image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)) && image_index < image_number);
}