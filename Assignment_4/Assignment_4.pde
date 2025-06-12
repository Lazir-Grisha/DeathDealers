//variables to determine Game States
boolean GameStart = true;


//PImage Library
PImage Game;
PImage Start;

//Colour Variables
int r;
int g;
int b;

//Reticle Variables
boolean ReticleUp = false;
boolean ReticleDown = false;
  Reticle leftReticle = new Reticle();



void setup() {
  size(1000, 400);
  background (0);
  imageMode(CENTER);
  rectMode(CENTER);
  Game = loadImage("Game.jpeg");
  Start = loadImage("Start.jpeg");


}

void draw() {
    leftReticle.drawReticle();
    //leftReticle.moveReticle();
  //drawCharacter();
  //Display Start Screen
  //if (GameStart == true) {
   // GameStart();
 // } else background(255);
}

void keyPressed() {
  if (GameStart == true) {
    GameStart = false;
  }
  if (keyCode == UP){
    ReticleUp = true;
  } else ReticleUp = false;
  if (keyCode == DOWN){
    ReticleDown = true;
  } else ReticleDown = false;
}
