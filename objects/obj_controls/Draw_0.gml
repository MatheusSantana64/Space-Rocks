// Set font
draw_set_font(fnt_menu);

// Align text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw text
draw_text(x, y, "Move with arrows or WASD\nAim and shoot with mouse");


// Reset drawing settings for future drawings
draw_set_halign(fa_left);
draw_set_valign(fa_top);