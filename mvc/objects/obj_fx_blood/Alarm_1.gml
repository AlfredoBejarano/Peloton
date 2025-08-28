if(image_alpha <= 0) {
    image_alpha = 0;
    instance_destroy();
} else {
    image_alpha -= 1/image_number;
    alarm[1] = 1;
}

