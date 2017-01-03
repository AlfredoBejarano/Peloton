// argument0 - If the player is aiming.
// argument1 - Up key (with keyboard_check or gamepad_check).
// argument2 - Down key (with keyboard_check or gamepad_check).
// argument3 - Left key (with keyboard_check or gamepad_check).
// argument4 - Right key (with keyboard_check or gamepad_check).

var move;
var face;
var aim     = argument0;
var up      = argument1;
var down    = argument2;
var left    = argument3;
var right   = argument4;

if(aim) { 
    move = 2; 
} else { 
    move = 4; 
    if(left) { image_xscale = -1; } else 
    if(right) { image_xscale = 1; }    
}

if(left && x > 128)    { x -= move;   }
if(right && x < (room_width - 128))   { x += move;   }
if(up)      { y -= move/2; }
if(down && y < 1075)    { y += move/2; }
