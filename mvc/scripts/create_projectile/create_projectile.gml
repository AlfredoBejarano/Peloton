// This script allows the creation of a projectile into the game's world.

// argument0 - X position where the projectile is going to be created.
// argument1 - Y position where the projectile is going to be created.
// argument2 - The projectile object itself.
// argument3 - Direction of the bullet.
// argument4 - Speed  of the bullet
// argument5 - The damage amount the projectile is going to inflict to a target.
// argument6 - The lifetime of the projectile (in steps).
// argument7 - The projectile's image_xscale
// argument8 - The projectile's image_yscale

with(instance_create(argument0, argument1, argument2)) {
    motion_set(argument3,argument4);
    damage = argument5;
    alarm[0] = argument6;
    image_xscale = argument7;
    image_yscale = argument8;    
}

