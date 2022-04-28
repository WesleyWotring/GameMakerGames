global.game_over = false
global.flash_time = 100
score = 0;

if (room == game_Room || room == game_Room2) {
	
audio_play_sound(Snd_background,1,true);
}

else {

audio_stop_all();
}