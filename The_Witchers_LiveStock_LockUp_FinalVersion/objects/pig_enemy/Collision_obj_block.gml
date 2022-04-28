if (room == game_Room){
	path_start(BasicPath, 3, path_action_restart, 1);
}

if (room == game_Room2) {
	path_start(secondPath, 3, path_action_restart, 1);
}


hspeed = hspeed * -1;

image_xscale = image_xscale * -1;