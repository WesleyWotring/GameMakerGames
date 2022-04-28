shader_set(shaderBattery);

shader_set_uniform_f(uni_add, add);

shader_set_uniform_f(uni_time, current_time/2000)

draw_self();

shader_reset();