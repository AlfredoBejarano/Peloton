/// create_muzzle_flash(x, y, self);
xx = argument0;
yy = argument1;
wep = argument2;
if(wep.ammo_type == 3) { flash = obj_muzzle_flash } else { flash = obj_muzzle_flash_small }
with(instance_create(xx,yy, flash)) { weapon = argument2; image_xscale = argument2.image_xscale}
