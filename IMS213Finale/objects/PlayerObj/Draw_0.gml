draw_self();

draw_set_color(c_purple);
draw_circle(xPos, yPos, 10, false);

//Custom script to draw rectangle with thicker outline
DrawRectOutlined(tileXRect[0], tileYRect[0], tileXRect[1], tileYRect[1], 10);
//draw_roundrect_color_ext(tileXRect[0], tileYRect[0], tileXRect[1], tileYRect[1], 2, 2, c_white, c_red, true);