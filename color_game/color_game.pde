//Emma Lee
//Sept 29 2022

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

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
  rectMode(CENTER);
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
