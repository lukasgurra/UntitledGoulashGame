if (hit_timer <= 0)
{
	hit_points -= 1;

	hit_timer = hit_cooldown;
}

if (hit_points <= 0)
{
	instance_destroy();
}