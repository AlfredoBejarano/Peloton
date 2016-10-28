// This script allows to sync an object position relative to other object position.
// argument0 - The object to which the position is going to be sync.
// argument1 - X value to be added to the object's x axis.
// argument2 - Y value to be added to the object's y axis.
// argument3 - Preserve the image_xscale to the object.
// argument4 - Preserve the image_yscale to the object.
// argument5 - Preserve object's image angle.

// Sync to object
x = argument0.x + (argument1);
y = argument0.y + (argument2);

// Preserve image orientation.
if(argument3)   { image_xscale = argument0.image_xscale; }
if(argument4)   { image_yscale = argument0.image_yscale; }
if(argument5)   { image_angle  = argument0.image_angle;  }
