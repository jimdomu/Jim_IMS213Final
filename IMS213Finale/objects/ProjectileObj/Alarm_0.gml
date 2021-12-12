var xDiff = x - enemyPosX;
var yDiff = y - enemyPosY;
angle = 90 + darctan(xDiff/yDiff);

if (yDiff < 0)
{
	angle += 180;
}

motion_set(angle, projSpeed);
image_angle = direction;

