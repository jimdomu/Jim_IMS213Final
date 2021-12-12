damage = 5;
radius = 100;

target = 0;

recharge = false;

instance_create_layer(x,y,"BushLayer",BushObj);

grown = false;
growing = false;

tileOn = noone;

//If plant not wet, plant degrade and eventually return to ungrown state
bushHealth = 100;
decayRate = 10;
