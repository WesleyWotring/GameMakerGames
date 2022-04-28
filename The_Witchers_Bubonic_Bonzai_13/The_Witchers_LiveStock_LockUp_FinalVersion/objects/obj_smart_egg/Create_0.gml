hspeed = -8;

if (instance_exists(MainPlayer_obj))
{
    image_angle = MainPlayer_obj.x
    direction = point_direction(x, y, MainPlayer_obj.x, MainPlayer_obj.y);
} else
{
    direction = 270;
}
