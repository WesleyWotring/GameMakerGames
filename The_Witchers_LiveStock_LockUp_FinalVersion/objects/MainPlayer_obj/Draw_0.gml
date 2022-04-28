
 if(surface_exists(surface_object.surface)){
	surface_set_target(surface_object.surface);
	
	//surface cleaner
	draw_clear_alpha(c_black, 0);
	
	//redraw screen to fully black
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width, room_height,false);
	draw_set_color(c_white);
	
	//circle to follow player
	gpu_set_blendmode(bm_subtract);
	draw_circle(x,y, 50, false);
	gpu_set_blendmode(bm_normal);
	
	//torch's light
	if(instance_exists(obj_torch)){
	
		gpu_set_blendmode(bm_subtract);
		draw_circle(obj_torch.x, obj_torch.y, 100, false);
		gpu_set_blendmode(bm_normal);
	}
	if(instance_exists(obj_torch2)){
		gpu_set_blendmode(bm_subtract);
		draw_circle(obj_torch2.x, obj_torch2.y, 100, false);
		gpu_set_blendmode(bm_normal);
	}if(instance_exists(obj_torch3)){
		gpu_set_blendmode(bm_subtract);
		draw_circle(obj_torch3.x, obj_torch3.y, 100, false);
		gpu_set_blendmode(bm_normal);
	}if(instance_exists(obj_torch4)){
		gpu_set_blendmode(bm_subtract);
		draw_circle(obj_torch4.x, obj_torch4.y, 100, false);
		gpu_set_blendmode(bm_normal);
	}if(instance_exists(obj_torch5)){
	
		gpu_set_blendmode(bm_subtract);
		draw_circle(obj_torch5.x, obj_torch5.y, 100, false);
		gpu_set_blendmode(bm_normal);
	}
	
	
	
	

	//flash down
	if (keyboard_check(vk_space) && (global.flash_time > 0) && (sprite_index == walkDown_Animation)) {
		gpu_set_blendmode(bm_subtract);
		draw_sprite(lightDown_spr, 0, x, y);
		gpu_set_blendmode(bm_normal);
	}
	
	//flash right
	if (keyboard_check(vk_space) && (global.flash_time > 0) && (sprite_index == walkSide_Animation) && (image_xscale > 0)) {
		gpu_set_blendmode(bm_subtract);
		draw_sprite(light_spr, 0, x, y);
		gpu_set_blendmode(bm_normal);
	}
	
	//flash left
	if (keyboard_check(vk_space) && (global.flash_time > 0) && (sprite_index == walkSide_Animation) && (image_xscale < 0)) {
		gpu_set_blendmode(bm_subtract);
		draw_sprite(lightLeft_spr, 0, x, y);
		gpu_set_blendmode(bm_normal);
	}
	
	//flash up
	if (keyboard_check(vk_space) && (global.flash_time > 0) && (sprite_index == walkUp_Animation)) {
		gpu_set_blendmode(bm_subtract);
		draw_sprite(lightUp_spr, 0, x, y);
		gpu_set_blendmode(bm_normal);
	}
	
	
	surface_reset_target();
}


draw_self();
