move_x_direction = 0;
move_x_speed = 7;
move_y_speed = 0;
jump_speed = 10;
gravitation = 0.03;
max_falling_speed = 15;

player_direction = 1;

move_x = 0;
move_y = 0;

fist_sprite = obj_fist_right;
fist_cooldown = 0.5 * 60;
fist_active_cooldown = 0;

collision_tilemap = layer_tilemap_get_id("Collision_layer");

hit_points = 3;
hit_timer = 0;
hit_cooldown = 60;