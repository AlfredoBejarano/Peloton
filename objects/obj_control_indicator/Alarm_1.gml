if(image_alpha <= 1) {
    image_alpha += 1 / 60;
    alarm[1] = 1;    
} else {
    image_alpha = 1;
    alarm[3] = 60;
}

