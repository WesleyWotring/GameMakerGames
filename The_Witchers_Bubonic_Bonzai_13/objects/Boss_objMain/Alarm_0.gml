// create shots at player

if(move == 0){
	if (moveCounter <= 1){
		shootPlayer(shotSpeed);
	
		moveCounter++;
	}else  {
		moveCounter = 0;
		move = 1;
	}
	alarm[0] = shotTimer;
}