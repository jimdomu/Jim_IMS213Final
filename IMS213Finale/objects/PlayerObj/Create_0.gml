//Movement variables
//The booleans allow controller support to be implemented quickly
moveUp = false;
moveDown = false;
moveLeft = false;
moveRight = false;

walkSpeed = 5;

//Utility variables
//The booleans allow controller support to be implemented quickly
use1 = false;
use2 = false;

//There are 4 available slots to use items
//2 tools: shovel, watering can. Always first 2 slots respectively
toolEquipped = 0;

//Toolbelt holds equipments 
//First slot always have value 1 to indicate shovel
//Second slot holds watering can. Value indicates number of use left
//Third and fourth slots hold seed type value. Default 0 means no seed
toolBelt = [1, 1, 0, 0];