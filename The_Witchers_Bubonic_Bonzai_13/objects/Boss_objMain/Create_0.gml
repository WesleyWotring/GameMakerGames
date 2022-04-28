hp = 100;
move = 0;
vspeed = 5;
moveCounter = 0;
gravity_direction = 270;

shotTimer = room_speed * 2;
shotSpeed = 15;

alarm[0] = shotTimer;

//moving stuff
upSpd = 20;
downSpd = 30;
waitTime = 1.5;
placement = -1;

audio_play_sound(snd_rawr,2,false);