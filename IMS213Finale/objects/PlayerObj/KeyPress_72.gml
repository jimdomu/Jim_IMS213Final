//First button: use tool
if (tileAhead != noone)
{
	if (tileAhead.image_index = 1 or tileAhead.image_index = 3)
	{
		if (totalScore >= cost)
		{
			tileAhead.image_index += 1;
			totalScore -= cost;
		}
	}
		else
	{
		tileAhead.wet = true;
		tileAhead.wetTimer = tileAhead.wetMaxTimer;
	}
}