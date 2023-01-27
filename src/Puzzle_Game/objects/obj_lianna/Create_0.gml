image_speed = .25
walk_speed = 5
strength = 1
hp = global.lianna_health
invincible = false

view_width = camera_get_view_width(view_camera[0]) / 2
view_height = camera_get_view_height(view_camera[0]) / 2

falling_edge = 20

player_jumping = false;
player_falling = false;

player_velocity_y = 0;

player_initial_jump_acceleration = 5;
player_jump_acceleration = 3;
player_max_jump_velocity = 10;

player_fall_acceleration = 3;
player_max_fall_velocity = 30;

player_jump_counter = 0;
player_jump_duration = 7;