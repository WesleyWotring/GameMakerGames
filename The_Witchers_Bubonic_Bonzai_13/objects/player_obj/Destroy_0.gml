if(lives > 0){
room_restart();
lives--;

}else {
room_goto(LoseScreen);
global.game_over = true;

}
