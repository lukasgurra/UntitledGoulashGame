move_x_direction = 0 + keyboard_check(vk_right) - keyboard_check(vk_left);
move_x = move_x_direction * move_x_speed;
fist_active_cooldown -= 1;
if (hit_timer > 0){hit_timer -= 1;}

if (place_meeting(x, y+2, collision_tilemap))
{
	move_y = 0;
	move_y_speed = 0;
	if (keyboard_check(vk_space))
	{
		move_y = -jump_speed;
	}
}

if (place_meeting(x, y, collision_tilemap))
{
	move_y_speed = 0;
	move_y = 0;
}

else 
{
	if (move_y < max_falling_speed)
	{
		move_y_speed += gravitation;
		move_y += move_y_speed;
	}
}

move_and_collide(move_x, move_y, collision_tilemap);

if (move_x_direction > 0)
{
	player_direction = 1;
}
else if (move_x_direction < 0)
{
	player_direction = -1;
}

function toggle_visibility_when_hit()
{
	if (hit_timer > 0)
	{
	    if (visible == true)
	    {
	        visible = false
	    }
	    else
	    {
	        visible = true
	    }
	}
	else
	{
		visible = true
	}
}

// Attack with fist only if fist doesn't exist and is off cooldown
if (keyboard_check(vk_lshift))
{
	if(!instance_exists(obj_fist_right) and !instance_exists(obj_fist_left) and (fist_active_cooldown <= 0))
	{
		if (player_direction = 1){ fist_sprite = obj_fist_right }
		else {fist_sprite = obj_fist_left}
		instance_create_layer(x + player_direction * 50, y+45, "instances", fist_sprite);
		fist_active_cooldown = fist_cooldown;
	}
}

toggle_visibility_when_hit();