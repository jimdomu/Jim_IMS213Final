if (enemyNum < 30 and !generatingEnemy)
{
	generatingEnemy = true;
	alarm_set(1, 70);
}

if (playerHealth <= 0)
{
	//Player lose. 
	alarm_set(3,0);
	alarm_set(2,1);
}

if (enemyNum = 30 and !resetting)
{
	alarm_set(3, 25 * 60);
	resetting = true;
}