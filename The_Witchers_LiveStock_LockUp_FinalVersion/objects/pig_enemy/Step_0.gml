timeline_position = path_position * 100;

if (instance_exists(MainPlayer_obj)){
    if(distance_to_object(MainPlayer_obj) < 100){
		
		//path_position = 
        path_end();
        direction = point_direction(x,y,MainPlayer_obj.x,MainPlayer_obj.y);
        speed = 3;
    }

}