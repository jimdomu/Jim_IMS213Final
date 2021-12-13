
motion_set(direction, 0);

if (moveUp)
{
	motion_add(90, walkSpeed);
}
else if (moveDown)
{
	motion_add(270, walkSpeed);
}

if (moveLeft)
{
	motion_add(180, walkSpeed);
}
else if (moveRight)
{
	motion_add(0, walkSpeed);
}

image_angle = direction;

show_debug_message(image_angle);

xPos = 0;
yPos = 0;

switch(image_angle)
{
	case 0:
		xPos += aheadOffset;
		break;
	case 45:
		xPos += aheadOffset / 1.4;
		yPos -= aheadOffset / 1.4;
		break;
	case 90:
		yPos -= aheadOffset;
		break;
	case 135:
		xPos -= aheadOffset / 1.4;
		yPos -= aheadOffset / 1.4;
		break;
	case 180:
		xPos -= aheadOffset;
		break;
	case 225:
		xPos -= aheadOffset / 1.4;
		yPos += aheadOffset / 1.4;
		break;
	case 270:
		yPos += aheadOffset;
		break;
	case 315:
		xPos += aheadOffset / 1.4;
		yPos += aheadOffset / 1.4;
		break;
}

xPos += x;
yPos += y;

tileAhead = collision_point(xPos, yPos, TileObj, false, true)
show_debug_message(string(xPos) + " " + string (yPos));
if (tileAhead != noone)
{
	tileXRect[0] = tileAhead.x - tileWidth/2;
	tileXRect[1] = tileAhead.x + tileWidth/2;
	tileYRect[0] = tileAhead.y - tileWidth/2;
	tileYRect[1] = tileAhead.y + tileWidth/2;
}