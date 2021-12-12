tileWidth = 200;

//keyPos stores tiles that change behavior of AI (for example turning)
keyPos = array_create(7,noone);
//keyPos[0] is always spawn point
keyPos[0] = [5,0];
keyPos[1] = [5,7];
keyPos[2] = [2,7];
keyPos[3] = [2,4];
keyPos[4] = [3,4];
keyPos[5] = [3,1];
keyPos[6] = [0,1];
//Last keyPos is always end point

x = tileWidth/2 + 250 + tileWidth * keyPos[0,1];
y = 100 + tileWidth * keyPos[0,0];

//Instructions for the enemy to follow path
//Information must be obtained from deconstructing keyPos for easy map generation
//Instruction array is 2D array with length of keyPos -1
instruction = array_create(6, noone);
instruction[0] = [0,0];
instruction[1] = [0,0];
instruction[2] = [0,0];
instruction[3] = [0,0];
instruction[4] = [0,0];
instruction[5] = [0,0];

alarm_set(0,1);

maxSpeed = 3;
travelSpeed = maxSpeed;

currentStep = 0;

//Enemy status
maxHealth = 100;
currentHealth = maxHealth;
myNum = 0; //Referring to the index of the enemy within EnemyArr
inBush = false;
