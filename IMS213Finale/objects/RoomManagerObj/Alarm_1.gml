//Summon enemy at spawn position

//Get coordinate position

var h = keyPos[0,0];
var v = keyPos[0,1];

var xPos = tileStart + tileWidth * h;
var yPos = 100 + tileWidth * v;

var enemyInstance = instance_create_layer(xPos, yPos, "EnemyLayer", EnemyObj);
enemyArr[enemyNum] = enemyInstance;
enemyInstance.myNum = enemyNum;
enemyInstance.maxHealth += bonusHealth;
enemyInstance.currentHealth = enemyInstance.maxHealth;
enemyNum += 1;

generatingEnemy = false;