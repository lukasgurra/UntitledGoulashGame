move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x = move_x * move_x_speed;

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
