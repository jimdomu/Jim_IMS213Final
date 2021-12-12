draw_set_alpha(1);

draw_self();

//Draw health bar: 1 background bar with dark color, 1 health bar
draw_set_color(c_grey);
draw_rectangle(x-50, y-50, x+50, y-30, false);

//Calculate health left to health max
draw_set_color(c_red);
draw_rectangle(x-50, y-50, x+50 - (maxHealth-currentHealth), y-30, false);