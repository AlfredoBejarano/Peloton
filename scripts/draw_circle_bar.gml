///draw_circle_bar(x,y,radius,maxsegments,segments,startangle,totalangle,direction,colour)

//argument0 = x
//argument1 = y
//argument2 = radius
//argument3 = maxsegments
//argument4 = segments
//argument5 = startangle
//argument6 = totalangle
//argument7 = direction
//argument8 = colour

anglechange = (argument6/argument3)*(pi/180)
i = argument5*(pi/180)

ax = argument0+(cos(i)*argument2)
ay = argument1-(sin(i)*argument2)

repeat(argument4) {
    i += argument7 * anglechange
    
    bx = argument0+(cos(i)*argument2)
    by = argument1-(sin(i)*argument2)
    
    draw_triangle_colour(ax,ay,bx,by,argument0,argument1,argument8,argument8,argument8,0)
    
    ax = bx
    ay = by
}
