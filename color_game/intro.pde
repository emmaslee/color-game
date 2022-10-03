void intro() {

  background(190, 228, 229);
  // Title
  strokeWeight(1);
  fill(0);
  milkycoffee = createFont("Milky Coffee.ttf", 72);
  textSize(72);
  textFont(milkycoffee);
  text("COLOUR GAME", 400, 400);
 
 //Start Button
 //Tactile
 if (mouseX > 300 && mouseX < 500 && mouseY > 600 && mouseY < 700) {
   fill(200);
 } else {
   fill(146, 240, 140);
 }
 rect(300, 600, 200, 100);
 fill(0);
 textSize(10);
 milkycoffee = createFont("Milky Coffee.ttf", 25);
textFont(milkycoffee);
text("Start", 400, 650);
  

}



void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 600 && mouseY < 700) {
  mode = GAME;
  }
}  
