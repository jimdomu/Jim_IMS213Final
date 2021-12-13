//Testing plant interaction

if (plant = noone)
{
	if (image_index = 4)
	{
		plant = instance_create_layer(x, y, "PlantLayer", RoseBushObj);
		plant.tileOn = id;
		plantType = 1;
		alarm_set(0,0);
	}
	else if (image_index = 2)
	{
		plant = instance_create_layer(x, y, "PlantLayer", BerryBushObj);
		plant.tileOn = id;
		plantType = 2;
		alarm_set(0,0);
	}
}

if (wet)
{
	if (!drying)
	{
		wetIndicator = instance_create_layer(x,y,"OverlayLayer",WetIndicatorObj);
		drying = true;
	}
	else if (wetTimer > 0)
	{
		wetTimer -= delta_time/1000000;
	}
	else
	{
		wet = false;
		drying = false;
		instance_destroy(wetIndicator);
	}
}