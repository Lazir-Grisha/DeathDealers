ArrayList<Projectile> cards;

boolean shoot = false;
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
//Projectile cards = new Projectile();


void setup() {
  size(1000, 400);
  imageMode(CENTER);
  rectMode(CENTER);
  Game = loadImage("Game.png");
  Start = loadImage("Start.png");
  cards = new ArrayList<Projectile>();
}

void draw() {
  background (0);

  leftReticle.drawReticle();
  leftReticle.moveReticle();
  for (int i = 0; i < cards.size(); i++) {
    Projectile c = cards.get(i);
    c.drawProjectile();
    c.moveProjectile();
  }
  drawCharacter();



  //Display Start Screen
  if (gameStart == true) {
  GameStart();
  } else background(0);
}

void keyPressed() {
  if (gameStart == true) {
    gameStart = false;
  }
  if (keyCode == UP) {
    ReticleUp = true;
  }
  if (keyCode == DOWN) {
    ReticleDown = true;
  }
  if (keyCode == LEFT || keyCode == RIGHT) {
    shoot = true;
  }
  if (shoot == true) {
    Projectile c = new Projectile(885, leftReticle.position.y);
    cards.add(c);
  }
}

void keyReleased( ) {
  if (shoot == true) {
    shoot = false;
  }
  if (keyCode == UP) {
    ReticleUp = false;
  }
  if (keyCode == DOWN) {
    ReticleDown = false;
  }
}
