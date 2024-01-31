if (instance_exists(obj_player) == false)
{
	instance_destroy();
}


time_to_live -= 1;

x = obj_player.x + x_difference;
y = obj_player.y + y_difference;

if (time_to_live <= 0)
{
	instance_destroy();
}

