if (grown)
{
	growing = false;
	image_index = 1;
	
	if (tileOn.wet)
	{
		for (var i = 0; i < 30; i++)
		{
			if (enemyArr[i] != noone)
			{
				var xDiff = x - enemyArr[i].x;
				var yDiff = y - enemyArr[i].y;
				var distance = sqrt(power(xDiff,2) + power(yDiff,2));
				if (distance < radius)
				{
					var angle = darctan(xDiff/yDiff);
					if (yDiff > 0)
					{
						angle = 180 + angle;
					}
					
					image_angle = angle;
					target = i;
					if (!recharge)
					{
						recharge = true;
						alarm_set(0, 40);
					}
					break;
				}
			}
		}
	}
}
else if (tileOn != noone and tileOn.wet and !growing)
{
	growing = true;
	//Grow time = second * 60
	alarm_set(1, 8 * 60);
}
