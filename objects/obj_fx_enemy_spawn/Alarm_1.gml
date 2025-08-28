if(image_alpha > 0) {
   image_alpha -= 1/15;
   alarm[1] = 1;
} else {
   instance_destroy();
}

