
if (grown)
{
	growing = false;
	image_index = 1;
	
	if (!tileOn.wet)
	{
		bushHealth -= decayRate * delta_time/1000000;
	}
	
	//Show Healthbar through number of berries:
	if (bushHealth > 90)
	{
		image_index = 1;
	}
	else if (bushHealth > 80)
	{
		image_index = 2;
	}
	else if (bushHealth > 70)
	{
		image_index = 3;
	}
	else if (bushHealth > 60)
	{
		image_index = 4;
	}
	else if (bushHealth > 50)
	{
		image_index = 5;
	}
	else if (bushHealth > 40)
	{
		image_index = 6;
	}
	else if (bushHealth > 30)
	{
		image_index = 7;
	}
	else if (bushHealth > 20)
	{
		image_index = 8;
	}
	else if (bushHealth > 10)
	{
		image_index = 9;
	}
	else if (bushHealth > 0)
	{
		image_index = 10;
	}
	else
	{
		image_index = 0;
		grown = false;
	}
}
else if (tileOn != noone and tileOn.wet and !growing)
{
	growing = true;
	//Grow time = second * 60
	alarm_set(1, 15 * 60);
}
