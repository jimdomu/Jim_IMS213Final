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