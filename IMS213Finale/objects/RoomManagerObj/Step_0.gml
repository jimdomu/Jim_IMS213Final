if (enemyNum < 30 and !generatingEnemy)
{
	generatingEnemy = true;
	alarm_set(1, 70);
}

if (playerHealth < 0)
{
	//Player lose. 
	alarm_set(2, 0);
}

if (enemyNum = 30 and !resetting)
{
	alarm_set(3, 35 * 60);
	resetting = true;
}