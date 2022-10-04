void gameover() {
  background(255, 0, 0);
  text("GAME OVER", 400, 400);
  
  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 50);
  
  
}

 void gameoverClicks() {
   mode = INTRO;
   score = 0;
 }
