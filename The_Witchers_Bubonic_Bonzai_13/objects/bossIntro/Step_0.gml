if (instance_place(x, y+1, obj_block)) {
        gravity = 0;
    } else {
        gravity = .5;
    }

if(y <= 580){
	if (move == 1){
		move = 1;
		vspeed = 0;
		alarm[0] = room_speed * 2;
		
	}	
}