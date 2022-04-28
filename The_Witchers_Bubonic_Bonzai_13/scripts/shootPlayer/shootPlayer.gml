// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shootPlayer(spd){
	s = instance_create_depth(x,y,0, rat_SmartBlob_obj)
	if(instance_exists(player_obj)){
	//image_angle = player_obj.x;
	s.direction = point_direction(x,y,player_obj.x,player_obj.y);
	}else {
		s.direction = 180;
	}
	s.speed = spd;
}