//Run through keyPos with instructions
image_angle = direction;

var dir = 0;

if (instruction[currentStep, 0] = 1)
{
	dir = 270;
}
else if (instruction[currentStep, 0] = -1)
{
	dir = 90;
}
else if (instruction[currentStep, 1] = 1)
{
	dir = 0;
}
else if (instruction[currentStep, 1] = -1)
{
	dir = 180;
}

motion_set(dir, travelSpeed);

if (currentStep < array_length(instruction) - 1)
{
	var xPos = tileWidth/2 + 250 + tileWidth * keyPos[currentStep+1, 1];
	var yPos = 100 + tileWidth * keyPos[currentStep+1, 0];

	if (x < xPos+10 and x > xPos-10)
	{
		if (y < yPos+10 and y > yPos-10)
		{
			currentStep += 1;
		}
	}
}
else
{
	var xPos = tileWidth/2 + 250 + tileWidth * keyPos[currentStep+1, 1];
	var yPos = 100 + tileWidth * keyPos[currentStep+1, 0];

	if (x < xPos+10 and x > xPos-10)
	{
		if (y < yPos+10 and y > yPos-10)
		{
			playerHealth -= 1;
			instance_destroy(id);
			enemyArr[myNum] = noone;
		}
	}
}

if (currentHealth <= 0)
{
	instance_destroy(id);
	enemyArr[myNum] = noone;
}

if (inBush)
{
	travelSpeed = maxSpeed * 0.6;
}
else
{
	travelSpeed = maxSpeed;
}