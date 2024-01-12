if (hit_timer > 0){hit_timer -= 1;}

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
function jump_controller()
{
	if (place_meeting(x, y+2, collision_tilemap))
	{
		move_y = 0;
		move_y_speed = 0;
		jump_timer -= 1;
		if (jump_timer <= 0)
		{
			jump_timer = jump_cooldown;
			move_y = -jump_speed;
		}
	}
	else
	{
		if (move_y < max_falling_speed)
		{
			move_y_speed += gravitation;
			move_y += move_y_speed;
		}
	}
}

function check_hit_wall()
{
	if (place_meeting(x - 1, y, collision_tilemap))
	{
		move_x *= -1;
	}

	if (place_meeting(x + 1, y, collision_tilemap))
	{
		move_x *= -1;
	}
}

jump_controller();
check_hit_wall();
toggle_visibility_when_hit();
move_and_collide(move_x, move_y, collision_tilemap);