//World is managed within a 2D array. Each tile is managed with a type number
//Type number determines what type of tile it is

tileArr = array_create(12, noone);

//Each tile is 100 x 100. This can help determining how many tiles are used
//7 tiles vertical, 10 tiles horizontal
//But, for now, I will be handcrafting tiles
tileWidth = 200;
tileStart = tileWidth/2 + 250;

/* Reserve in case of random generation
for (var i = 0; i < 12; i++)
{
	tileArr[i] = array_create(12, 1);
}

*/

//1 means normal path tile
//2 means prep path tile
//3 means normal grass tile
//4 means prep grass tile
//5 means rock tile (cannot place things on)
//6 means player protect target

tileArr[0]   =  [3, 6, 3, 3, 3, 3, 3, 3, 3, 3];
tileArr[1]   =  [3, 1, 3, 3, 3, 3, 3, 3, 3, 3];
tileArr[2]   =  [3, 1, 3, 3, 1, 1, 1, 1, 3, 3];
tileArr[3]   =  [3, 1, 1, 1, 1, 3, 3, 1, 3, 3];
tileArr[4]   =  [3, 3, 3, 3, 3, 3, 3, 1, 3, 3];
tileArr[5]   =  [1, 1, 1, 1, 1, 1, 1, 1, 5, 5];
tileArr[6]   =  [3, 3, 3, 3, 3, 3, 3, 3, 3, 3];

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

alarm_set(0, 1);

generatingEnemy = false;
globalvar enemyArr;
enemyArr = array_create(30, noone); //Hard enemy cap.
enemyNum = 0; //Track number of active enemies

alarm_set(1,1);

//Control player status: health remaining, money available
playerMaxHealth = 5;
globalvar playerHealth;
playerHealth = playerMaxHealth;

//Enemies come in wave of 30.
//I ran out of time to implement more meaningful dynamic difficulty
bonusHealth = 0;
bonusHealthPerWave = 10;
resetting = false;

//Score control:
globalvar totalScore;
totalScore = 1000;