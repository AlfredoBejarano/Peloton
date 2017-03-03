///set_item_picker_data(name to show, quantity to show, dropable subimage, sound);
obj_item_picker.name = argument[0]
obj_item_picker.quantity = argument[1];
obj_item_picker.subimage = argument[2];
obj_item_picker.alarm[0] = 1;
audio_play_sound(argument[3], 0, false);
