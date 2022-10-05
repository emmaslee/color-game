void game() {
  background(255);
  fill(0);
  rect(0, 0, 400, 800);

  fill(colors[randomColor]);
  text(words[randomWord], width/2, height/2);

  circle(400, moveY, 20);
  moveY = moveY + 10;

  if (moveY > 800) {
    mode = GAMEOVER;
  }


  //score



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
      moveY = 0;
      success.rewind();
      success.play();
      split();
    }
    if (guess == 2) {
      mode = GAMEOVER;
      failure.rewind();
      failure.play();
    }
    guess = 3;
  }


  if (randomWord != randomColor) {
    if (guess == 2) {
      score++ ;
      randomWord = (int) random (0, 5);
      randomColor = (int) random (0, 5);
      moveY = 0;
      success.rewind();
      success.play();
      split();
    }
    if (guess == 1) {
      mode = GAMEOVER;
      moveY = 0;
      failure.rewind();
      failure.play();
    }
    guess = 3;
  }
  
}

void gameClicks() {
  if (mouseX > 0 && mouseX < 400 && mouseY > 0 && mouseY < 800) {
    guess = 1;
  }
  if (mouseX > 400 && mouseX < 800 && mouseY > 0 && mouseY < 800) {
    guess = 2;
  }
}

void split () {
  randomNum = (int) random(0, 10);
  
  if (randomNum < 5) randomWord = randomColor;
  if (randomNum >= 5) {
    while (randomWord == randomColor) {
      randomColor = (int) random(0, 5);
      //randomNum = (int) random(5, 10);
    }
  }
}
