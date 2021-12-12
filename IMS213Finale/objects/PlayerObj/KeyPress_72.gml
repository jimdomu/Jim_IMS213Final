//First button: use tool

if (tileAhead != noone)
{
	if (tileAhead.image_index = 1 or tileAhead.image_index = 3)
	{
		tileAhead.image_index += 1;
	}
	else
	{
		tileAhead.wet = true;
		tileAhead.wetTimer = tileAhead.wetMaxTimer;
	}
}