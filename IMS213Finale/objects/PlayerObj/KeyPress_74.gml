//Harvest or interact
if (tileAhead != noone and tileAhead.plant != noone)
{
	if (tileAhead.plant.grown)
	{
		if (tileAhead.plantType = 1)
		{
			tileAhead.plant.grown = false;
			totalScore += 100;
			tileAhead.plant.image_index = 0;
		}
		else if (tileAhead.plantType = 2)
		{
			tileAhead.plant.grown = false;
			totalScore += 2 * tileAhead.plant.bushHealth;
			tileAhead.plant.image_index = 0;
		}
	}
}