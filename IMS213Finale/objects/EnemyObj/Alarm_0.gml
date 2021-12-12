//From keyPos data, get an array that tells how the enemy should go
//Instruction is stored as 1/0/-1 
//first dimension: left/no/right
//second dimension: down/no/up

for (var i = 0; i < 6; i++)
{	
	if (keyPos[i,0] > keyPos[i+1,0])
	{
		instruction[i,0] = -1;
	}
	else if (keyPos[i,0] < keyPos[i+1,0])
	{
		instruction[i,0] = 1;
	}
	else
	{
		instruction[i,0] = 0;
	}
	
	if (keyPos[i,1] > keyPos[i+1,1])
	{
		instruction[i,1] = -1;
	}
	else if (keyPos[i,1] < keyPos[i+1,1])
	{
		instruction[i,1] = 1;
	}
	else
	{
		instruction[i,1] = 0;
	}
}

//Checking instructions
for (var n = 0; n < 6; n++)
{
	show_debug_message(string(instruction[n]));
}

