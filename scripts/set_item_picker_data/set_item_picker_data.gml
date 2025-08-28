/// @description set_item_picker_data(name to show, quantity to show, dropable subimage, sound);
/// @param name to show
/// @param  quantity to show
/// @param  dropable subimage
/// @param  sound
function set_item_picker_data() {
	/*with(argument[5]) {
		name = argument[0]
		quantity = argument[1];
		subimage = argument[2];
		alarm[0] = 1;
	}*/	
	audio_play_sound(argument[3], 0, false);
}
