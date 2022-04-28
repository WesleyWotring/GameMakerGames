function src_BossDamage(damage){

    if(instance_exists(Boss_obj)) {
		
    health += (+damage);
	}

   
    if(instance_exists(Boss_obj) && health <= 0) {
		instance_destroy(Boss_obj);
  
    }
   
}