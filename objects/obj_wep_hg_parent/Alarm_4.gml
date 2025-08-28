critical = irandom_range(min_critical, max_critical);
stopping_power = irandom_range(min_stopping, max_stopping);
create_hitscan(x + (image_xscale * shotx), y - shoty, __view_get( e__VW.WView, 0 )/2, 0, self, 0);

