void gameover() {
  background(255, 0, 0);
  text("GAME OVER", 400, 400);
  
  //score
  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 100);
  
  //Highscore
  if (score > highscore) {
    highscore = score;
  }
  text("Highscore: " + highscore, width/2, 50);
  
  
  //Return to Game button
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 600) {
    fill(200);
  } else {
    fill(146, 240, 140);
  }
  rect(300, 500, 200, 100);
  fill(0);
  textSize(30);
  text("RETURN", 400, 550);
}

 void gameoverClicks() {
   if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 600){
   mode = INTRO;
   score = 0;
   
   }
 }
 
