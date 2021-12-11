//put all tiles on the screen

for (var v = 0; v < 7; v++)
{
	for (var h = 0; h < 10; h++)
	{
		var xPos = tileStart + tileWidth * h;
		var yPos = 100 + tileWidth * v;
		
		var tile = instance_create_layer(xPos, yPos, "TileLayer", TileObj);
		tile.image_index = tileArr[v,h];
	}
}