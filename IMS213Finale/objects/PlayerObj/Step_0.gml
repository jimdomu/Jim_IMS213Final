
motion_set(0, 0);

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