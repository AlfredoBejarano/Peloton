/// argument0 - shotgun angle

an = argument0;
an2 = an / 2;
an5 = an / 5;
an7 = an / 7;
an25 = an2 * 2;
an50 = an5 * 2;
an100 = an7 * 2;

pe1 = an2;
pe2 = an2 - an5;
pe3 = an2 - an7;
pe4 = an2 - an25;
pe5 = an2 - an50;
pe6 = an2 - an100;

xx = x + (image_xscale*280);
yy = y - 51;

create_hitscan(xx, yy, view_wview/2, pe1, self, -(15 - pe1)); 
create_hitscan(xx, yy, view_wview/2, pe2, self, -(15 - pe2)); 
create_hitscan(xx, yy, view_wview/2, pe3, self, -(15 - pe3)); 
create_hitscan(xx, yy, view_wview/2, pe4, self, -(15 - pe4)); 
create_hitscan(xx, yy, view_wview/2, pe5, self, -(15 - pe5)); 
create_hitscan(xx, yy, view_wview/2, pe6, self, -(15 - pe6));
create_hitscan(xx, yy, view_wview/2, -pe1, self, -(15 + pe1)); 
create_hitscan(xx, yy, view_wview/2, -pe2, self, -(15 + pe2)); 
create_hitscan(xx, yy, view_wview/2, -pe3, self, -(15 + pe3));
create_hitscan(xx, yy, view_wview/2, -pe4, self, -(15 + pe4)); 
create_hitscan(xx, yy, view_wview/2, -pe5, self, -(15 + pe5)); 
create_hitscan(xx, yy, view_wview/2, -pe6, self, -(15 + pe6));
create_muzzle_flash(xx + (16 * image_xscale), yy - 8, self)
