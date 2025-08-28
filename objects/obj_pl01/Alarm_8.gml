if(is_dying) {
    dead_animation();
    alarm[8] = 1; 
    y ++;
    image_alpha -= 0.1;
    if(image_alpha <= 0) {
        instance_destroy();
    }
} else {
    chainsaw_dead_animation();
}

