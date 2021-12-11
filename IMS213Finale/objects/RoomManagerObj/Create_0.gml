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

tileArr[0]   =  [3, 1, 3, 3, 3, 3, 3, 3, 3, 3];
tileArr[1]   =  [3, 1, 3, 3, 3, 3, 3, 3, 3, 3];
tileArr[2]   =  [3, 1, 3, 3, 1, 1, 1, 1, 3, 3];
tileArr[3]   =  [3, 1, 1, 1, 1, 3, 3, 1, 3, 3];
tileArr[4]   =  [3, 3, 3, 3, 3, 3, 3, 1, 3, 3];
tileArr[5]   =  [1, 1, 1, 1, 1, 1, 1, 1, 3, 3];
tileArr[6]   =  [3, 3, 3, 3, 3, 3, 3, 3, 3, 3];

alarm_set(0, 1);