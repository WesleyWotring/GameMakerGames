draw_set_colour($FFFF00)
//draw_rectangle(50, 5, 150, 45, false)

for (var i = 0; i < lives; i++){
	draw_sprite(lives_spr, 0, (50 + 24 * i), 15);
}

/* for (var i = 0; i < global.keys; i++){
	draw_sprite(keys_spr, 0, (50 + 24 * i), 15);
}
*/

draw_set_halign(fa_left)
draw_text(55, 55, "Score: " + string(score))
draw_text(55, 105, "Keys: " + string(global.keys))

/* if (global.game_over) {
    draw_set_halign(fa_center)
    draw_text(room_width / 2, room_height / 2, "You Lose! Press R to restart.")
}
*/