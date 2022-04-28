var l5C78A01B_0 = false;
l5C78A01B_0 = instance_exists(MainPlayer_obj);
if(l5C78A01B_0)
{
	draw_healthbar(8, 8, 256, 32, global.flash_time, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 1, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
}

draw_set_halign(fa_left)
draw_text(55, 55, "Score: " + string(score))