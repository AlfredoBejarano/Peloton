// argument0 - shotgun angle

an = argument0;
an2 = an/2
an5 = an/5
an25 = an5 * 2;

pe1 = an2;
pe2 = an2 - an5;
pe3 = an2 - an25;

xx = x + (image_xscale*229);
yy = y - 20;

create_hitscan(xx, yy, view_wview/2, -pe1, self, -(15 - -pe1)); 
create_hitscan(xx, yy, view_wview/2, -pe2, self, -(15 - -pe2)); 
create_hitscan(xx, yy, view_wview/2, -pe3, self, -(15 - -pe3));
create_hitscan(xx, yy, view_wview/2, pe3, self, -(15 - pe3)); 
create_hitscan(xx, yy, view_wview/2, pe2, self, -(15 - pe2)); 
create_hitscan(xx, yy, view_wview/2, pe1, self, -(15 - pe1)); 
create_muzzle_flash(xx + (64 * image_xscale), yy - 32, self)
