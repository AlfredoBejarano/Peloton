// This scripts allows to create an enviromental object that falls to the floor.

// argument0 - X position where it is going to be created.
// argument1 - Y position where it is going to be created.
// argument2 - The dropabble object.
// argument3 - If the item rotates or not.
// argument4 - Lifetime of the droppable (in steps).
// argument5 - The item's fall speed (in pixels per second).
// argument6 - If is a magazine
// argument7 - Sprite index to change
// argument8 - Parent object

with(instance_create(argument0, argument1, argument2)) {
    if(argument3)   { alarm[0] = 1; } else {  image_xscale = argument8.image_xscale; }
    alarm[1] = argument4;
    vspeed = argument5;
    if(argument6) { sprite_index = argument7; image_index = 3;}
}
