//Emma Lee
//Sept 29 2022

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PFont milkycoffee;

int randomWord = (int) random (0, 5);
int randomColor = (int) random (0, 5);

color red    = #ff0000;
color green  = #00ff00;
color blue   = #0000ff;
color yellow = #FFF827;
color purple = #6508A7;

String[] words = {"RED", "GREEN", "BLUE", "YELLOW", "PURPLE"};
color[] colors = {red, green, blue, yellow, purple};

//other
int guess;
final int TRUE = 1;
final int FALSE = 2;
final int RESET = 3;
int score;
int highscore;



//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//TARGET VARIABLES---------------------------------------------------------------


//COLOR PALLETTE

void setup() {  
  size(800, 800);
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);
  mode = INTRO;
  
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pausescreen();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode Error: Mode is" + mode);
  }
}
