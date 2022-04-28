
    if (keyboard_check(ord("D")) and !instance_place(x+move_speed, y, obj_block))  {
        //object_set_sprite(player_obj, walk_animation);
           sprite_index = walk_left_animation;
            image_speed = 1;
            image_xscale = -0.3;
           x += move_speed
		}
	else if (keyboard_check(ord("A") ) and !instance_place(x-move_speed, y, obj_block)) {
            // object_set_sprite(player_obj, walk_left_animation);
             sprite_index = walk_left_animation;
             image_speed = 1;
              image_xscale = 0.3;
             x -= move_speed
	}
	 
	else {
        image_speed = 0;
	}

if (keyboard_check(ord("W"))){
	   if (instance_place(x, y+1, obj_block)) {
		   audio_play_sound(snd_jump,2,false);
		//object_set_sprite(player_obj, jump_animation);
		//sprite_index = jump_animation;
        vspeed = jump_height;
        }
  }

    if (instance_place(x, y+1, obj_block)) {
        gravity = 0;
    } else {
        gravity = .5;
    }

    if (vspeed > 12) {
        vspeed = 12;
    }

    if (keyboard_check_pressed(vk_space)) {
		instance_create_layer(x, y, "Instances", scythe_animation_obj);
		audio_play_sound(snd_attack,2,false);
		//sprite_index = scythe_animation;
		//image_speed = 1;
		//image_xscale = .1;
		
		if(image_xscale > 0){
			scythe_animation_obj.image_xscale = scythe_animation_obj.image_xscale * -1;
		}
		
    }
