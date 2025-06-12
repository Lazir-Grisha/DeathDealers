//ArrayList<Projectile> card = new ArrayList<Projectile>();

boolean shoot=false;
//variables to determine Game States
boolean gameStart = true;
boolean characterSelection = false;
boolean gamePlay = false;
boolean gameOver = false;


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
Projectile card = new Projectile();



void setup() {
  size(1000, 400);
  background (0);
  imageMode(CENTER);
  rectMode(CENTER);
  Game = loadImage("Game.jpeg");
  Start = loadImage("Start.jpeg");
  //card = new ArrayList <Projectile>();
}

void draw() {
  leftReticle.drawReticle();
  //leftReticle.moveReticle();
  
  card.drawProjectile();
  card.moveProjectile();
  
  //drawCharacter();

  //Shoot card

  //if (shoot == true) {
  //  card.add(new Projectile());
  //}
  //for (Projectile part : card) {
  //  drawProjectile();
  //}



  //Display Start Screen
  //if (GameStart == true) {
  // GameStart();
  // } else background(255);
}

void keyPressed() {
  if (gameStart == true) {
    gameStart = false;
  }
  if (keyCode == UP) {
    ReticleUp = true;
  } else ReticleUp = false;
  if (keyCode == DOWN) {
    ReticleDown = true;
  } else ReticleDown = false;
  if (keyCode == LEFT || keyCode == RIGHT) {
    shoot = true;
  } else shoot = false;
}
