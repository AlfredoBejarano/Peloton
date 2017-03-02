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

var upleft = keyboard_check(ord('I'));
var upright = keyboard_check(ord('J'));
var downleft = keyboard_check(ord('K'));
var downright = keyboard_check(ord('L'));

if(aim) { 
    move = 4; 
} else { 
    move = 8; 
    if(left  || upleft  || downleft ) { image_xscale = -1; } else 
    if(right || upright || downright) { image_xscale = 1; }    
}

if((left  || upleft  || downleft ) && x > 128)    { x -= move;   }
if((right || upright || downright) && x < (room_width - 128))   { x += move;   }
if((up || upright || upleft) &&    y > 860)      { y -= move/2; }
if((down || downleft || downright) &&  y < 1075)    { y += move/2; }
