timeline_position = path_position * 100;

if (instance_exists(player_obj)){
    if(distance_to_object(player_obj) < 100){
        path_end();
        direction = point_direction(x,y,player_obj.x,player_obj.y);
        speed =hsp;
    }

}
