/// hat_factory(image_index) - it returns the hats depending on the subimage.

var index = 3;

if(choose(true, false, false, false)) {
    index = 1;
} else if(argument[0] > 0 && argument[0] < 4) {
    index = irandom_range(2, 4);
} else if(argument[0] == 0) {
    index = choose(0, 2, 3);
}

return index;

