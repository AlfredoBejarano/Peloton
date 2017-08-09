/// display_investigating_text(text);
if(instance_exists(obj_text)) {
    with(obj_text) {
        text = argument[0];
    }               
} else {
    txt = instance_create(x, y, obj_text);
    txt.text = argument[0];
}

return true;
