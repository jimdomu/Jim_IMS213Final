if (enemyArr[target] != noone)
{
	///ShootingFX
	audio_play_sound(ShootingFX, 0, false);
	
	projInstance = instance_create_layer(x,y, "ProjLayer", ProjectileObj);
	projInstance.damage = damage;
	projInstance.enemyPosX = enemyArr[target].x;
	projInstance.enemyPosY = enemyArr[target].y;
}
recharge = false;