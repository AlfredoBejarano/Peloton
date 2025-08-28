/// perform_pause(pause key)
// creates pause object
if(pause_object == noone) {
    pause_object = instance_create(-64, -64, obj_pause);
    pause_object.pause_key = argument[0];
    pause_object.visible = true;
} else {
    pause_object.visible = true;
}
