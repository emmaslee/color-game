//Emma Lee
//Sept 29 2022

PImage[] gif;
int numberOfFrames;
int f;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound variables
Minim minim;
AudioPlayer success, failure, music;

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

int randomNum;
float moveY;



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
  score = 0;
  highscore = 0;
  moveY = 0;
  
  //gif
  numberOfFrames = 9;
  gif = new PImage [numberOfFrames];
  
  int i = 0;
  while ( i < numberOfFrames ) {
    gif[i] = loadImage("frame_"+i+"_delay-0.04s.gif");
    i = i + 1;
  }
  
  //minim
  minim = new Minim(this);
  failure = minim.loadFile("FAILURE.wav");
  success = minim.loadFile("SUCCESS.wav");
  music = minim.loadFile("MUSIC.mp3");
  
}

void draw() {
  
  //GIF
  // image(gif[f], 0, 0, width, height);
  //println(frameCount);
  ////modulus of mod
  //if(frameCount % 2 == 0) f = f+ 1;
  //if (f == numberOfFrames) f = 0;
  
  
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
