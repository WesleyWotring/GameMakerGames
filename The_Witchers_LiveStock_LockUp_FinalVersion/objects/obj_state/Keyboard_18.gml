if(keyboard_check_pressed(ord("P"))){
	room_restart();
}
if(keyboard_check_pressed(ord("G"))){
	game_restart();

}if(keyboard_check_pressed(ord("B"))){
	global.flash_time += 10;
	
}	
if(keyboard_check_pressed(ord("N"))){
	room_goto_next();
}
