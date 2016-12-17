///scr_entity_draw()

/*
if (facing == global.RIGHT)
{
    image_xscale = scale_x;
}
else if (facing == global.LEFT)
{
    image_xscale = -scale_x;
}
*/
image_xscale = (facing * scale_x);
image_yscale = scale_y;

