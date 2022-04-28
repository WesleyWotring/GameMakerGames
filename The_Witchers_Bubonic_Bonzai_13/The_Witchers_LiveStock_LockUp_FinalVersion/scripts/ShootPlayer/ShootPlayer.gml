function ShootPlayer(spd){
    s = instance_create_depth(x,y,1, obj_smart_egg)
    if(instance_exists(MainPlayer_obj)){
    //image_angle = player_obj.x;
    s.direction = point_direction(x,y,MainPlayer_obj.x, MainPlayer_obj.y);
    }else {
        s.direction = 180;
    }
    s.speed = spd;
}