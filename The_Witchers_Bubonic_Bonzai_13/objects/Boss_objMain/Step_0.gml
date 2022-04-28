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


if(move == 1){
	if(y <= -272){
		move = 1.5;
		alarm[1] = 15;
		vspeed = 0;
	
		placement = choose(1,2,3);
		
		if (placement == 1){
			direction = point_direction(x, y, player_obj.x, player_obj.y);
			x = 992;
			y = -272;
		}
		else if (placement == 2){
			direction = point_direction(x, y, player_obj.x, player_obj.y);
			x = 1664;
			y = -272;
		}
		else if (placement == 3){
			if(instance_exists(player_obj))
			{
			x = player_obj.x;
			}else{
				x = 190;
			}
			y = -272;
		}
	}
	else{
		if(vspeed != -upSpd){
			 vspeed = - upSpd;	
		}
	}
}else if (move == 2){
	vspeed =+ downSpd;
	
	if(y >= room_height/2){
			moveCounter = 0;
			//shootPlayer(shotSpeed);
			vspeed = 0;
			y = room_height - 272;
			
			move = 0;
			
			//alarm[2] = room_speed * waitTime;
						
		
	}
}