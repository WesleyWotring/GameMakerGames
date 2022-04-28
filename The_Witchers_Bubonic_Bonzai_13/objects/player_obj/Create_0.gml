gravity_direction = 270;

if(room = BossLevel_room){
	 audio_stop_sound(background_snd);
	audio_play_sound(boss_sound,1,true);
  
}else{
	audio_play_sound(background_snd,1,true);
	
}