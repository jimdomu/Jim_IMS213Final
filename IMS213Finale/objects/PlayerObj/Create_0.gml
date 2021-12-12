//Movement variables
//The booleans allow controller support to be implemented quickly
moveUp = false;
moveDown = false;
moveLeft = false;
moveRight = false;

walkSpeed = 5;

//Utility variables
//The booleans allow controller support to be implemented later
use1 = false;
use2 = false;

//Different tools are used based on status of tile

//Tile snapping system
//variables to track tile detection
aheadOffset = 120;
xPos = 0;
yPos = 0;
tileXRect = [0,0];
tileYRect = [0,0];
tileWidth = 200;
tileAhead = noone;