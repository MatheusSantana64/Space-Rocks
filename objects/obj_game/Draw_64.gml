if (room == rm_game) {
	draw_text(10, 10, "Score: " + string(points));
}
else if (room == rm_menu) {
	draw_text(10, 10, "Highest Score: " + string(highscore));
}