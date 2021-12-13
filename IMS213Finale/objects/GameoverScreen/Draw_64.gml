draw_set_halign(fa_middle);
draw_set_valign(fa_center);

var color = c_black;

draw_text_ext_transformed_color(1250, 700, "Bugs Off", 80, 2000, 11, 11, 0, color, color, color, color, 1);

draw_text_ext_transformed_color(1250, 800, "Game Over. Your Score Is:", 80, 2000, 8, 8, 0, color, color, color, color, 1);
draw_text_ext_transformed_color(1250, 1100, string(totalScore), 80, 2000, 12, 12, 0, color, color, color, color, 1);
draw_text_ext_transformed_color(1250, 1300, "Left click on the screen to Restart.", 20, 600, 6, 6, 0, color, color, color, color, 1);