void game() {
  background(255);
  fill(0);
  rect(0, 0, 400, 800);
  
  fill(colors[randomColor]);
  text(words[randomWord], width/2, height/2);
  
  //match
   fill(255);
 textSize(10);
 milkycoffee = createFont("Milky Coffee.ttf", 70);
textFont(milkycoffee);
text("match", 200, 600);

//does not match
fill(0);
 textSize(10);
 milkycoffee = createFont("Milky Coffee.ttf", 70);
textFont(milkycoffee);
text(" doesn't", 600, 600);
text(" match ", 600, 660);


if (randomWord == randomColor) {
  if (guess == 1) {
    randomWord = (int) random (0, 5);
    randomColor = (int) random (0, 5);
    score ++;
    //success.rewind();
    //success.play();
  }
  if (guess == 2) {
    mode = GAMEOVER;
    //failure.rewind();
    //failure.play();
}
guess = 3;
}

if (randomWord != randomColor) {
  if (guess == 2); {
    score++ ;
    randomWord = (int) random (0, 5);
    randomColor = (int) random (0, 5);
    //success.rewind();
    //success.play();
  }
  guess = 3;
}
}
    
void gameClicks() {
  
  //mode = GAMEOVER;
}
