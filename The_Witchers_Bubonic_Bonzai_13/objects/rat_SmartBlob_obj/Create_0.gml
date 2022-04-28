hspeed = -8;

if (instance_exists(player_obj))
{
	image_angle = player_obj.x
    direction = point_direction(x, y, player_obj.x, player_obj.y);
} else
{
    direction = 270;
}

