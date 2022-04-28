if (vspeed > 0 && player_obj.y < other.y) {
    instance_destroy(other);
    vspeed = 2
} else {
    instance_destroy(player_obj);
}

