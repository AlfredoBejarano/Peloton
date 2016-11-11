// argument0 - shotgun angle

an = argument0;
an2 = an/2
an5 = an/5
an25 = an5 * 2;

pe1 = an2;
pe2 = an2 - an5;
pe3 = an2 - an25;

create_hitscan(x + (image_xscale * 225), y-20, view_wview/2, -pe1, self, -(15 - -pe1)); 
create_hitscan(x + (image_xscale * 225), y-20, view_wview/2, -pe2, self, -(15 - -pe2)); 
create_hitscan(x + (image_xscale * 225), y-20, view_wview/2, -pe3, self, -(15 - -pe3));
create_hitscan(x + (image_xscale * 225), y-20, view_wview/2, pe3, self, -(15 - pe3)); 
create_hitscan(x + (image_xscale * 225), y-20, view_wview/2, pe2, self, -(15 - pe2)); 
create_hitscan(x + (image_xscale * 225), y-20, view_wview/2, pe1, self, -(15 - pe1)); 
