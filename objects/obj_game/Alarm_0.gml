// Set new highscore
if(points > highscore){
	highscore = points;
}
	
// Reset values
points = 0;
powerup_time = 10;

// Restart room
room_restart();