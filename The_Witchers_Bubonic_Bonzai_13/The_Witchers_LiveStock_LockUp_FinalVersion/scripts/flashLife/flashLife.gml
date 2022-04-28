
function flashLife(){
while(instance_exists(obj_flash)){
        global.flash_time -= 2;
        if(global.flash_time == 0){
            instance_destroy(obj_flash);
        }
    }
}