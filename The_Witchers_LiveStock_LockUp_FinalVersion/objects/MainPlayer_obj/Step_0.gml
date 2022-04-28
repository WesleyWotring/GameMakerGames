 if (keyboard_check(ord("D")) and !instance_place(x+move_speed, y, obj_block))  {
            
            sprite_index = walkSide_Animation;
            image_speed = 1;
            image_xscale = 0.8;
            x += move_speed
            //flash_angle = 90;
        }
    else if (keyboard_check(ord("A") ) and !instance_place(x-move_speed, y, obj_block)) {
             //flash_angle = 0;
             sprite_index = walkSide_Animation;
             image_speed = 1;
             image_xscale = -.8;
             x -= move_speed;
            // flash_angle = 180;
    }
     
    else {
        image_speed = 0;
    }

if (keyboard_check(ord("W") ) and !instance_place(x, y-move_speed, obj_block) ) {
    
        //flash_angle =0 ;
        sprite_index = walkUp_Animation;
        image_speed = 1;
        //image_yscale = 1;
        y -= move_speed;
    //    flash_angle = 270;
        
  }

else if (keyboard_check(ord("S") ) and !instance_place(x, y+move_speed, obj_block) ) {
        //flash_angle = 0; 
        sprite_index = walkDown_Animation;
        image_speed = 1
        //image_yscale = 1;
        y += move_speed;
        //flash_angle = 90;

}


if(sprite_index == walkDown_Animation){
        if(instance_exists(obj_flash)){
            instance_destroy(obj_flash)
            flash_angle = 270
            
        }
        //flash_angle = 270
} else if(sprite_index == walkUp_Animation){
    if(instance_exists(obj_flash)){
            instance_destroy(obj_flash)
            flash_angle = 90
        }
}
else if(sprite_index == walkSide_Animation) && (image_xscale < 0){
    if(instance_exists(obj_flash)){
            instance_destroy(obj_flash)
            flash_angle = 180
        }
}
else if((sprite_index == walkSide_Animation) && (image_xscale > 0)){
    if(instance_exists(obj_flash)){
            instance_destroy(obj_flash)
            flash_angle = 0
        }
}
else{
        instance_destroy(obj_flash)
}

 if ((keyboard_check(vk_space)) && (global.flash_time > 0)) {
     if(instance_exists(obj_flash)){}
     else{
        instance_create_layer(x, y, "Instances", obj_flash);
		global.flash_time = global.flash_time - .4;
        obj_flash.image_angle = flash_angle;
        
		
        //global.flash_time -= 10;
       // flashLife();
        
        
        
        if(image_xscale > 0){
            //obj_flash.image_xscale = obj_flash.image_xscale * -1;
        }
     }
    }

if((keyboard_check_released(vk_space)) && global.flash_time > 0){
        instance_destroy(obj_flash)
		audio_play_sound(snd_flashlight,2,false);
}