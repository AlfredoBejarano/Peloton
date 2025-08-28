if(image_xscale >= 1) {
 image_xscale = 1;
 alarm[1] = 1;
} else {
    image_xscale += 0.1;
    alarm[0] = 1;
}

