var endPosX = tileStart + tileWidth * keyPos[6,1]
var endPosY = 60 + tileWidth * keyPos[6,0]

draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_text_ext_transformed_color(endPosX, endPosY, string(playerHealth) + "/" + string(playerMaxHealth), 8, 500, 5, 5, 0, c_white, c_white, c_white, c_white, 1);