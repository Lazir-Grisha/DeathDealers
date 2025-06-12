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
  background (0);
  imageMode(CENTER);
  rectMode(CENTER);
  Game = loadImage("Game.png");
  Start = loadImage("Start.png");
  cards = new ArrayList<Projectile>();
}

void draw() {
  leftReticle.drawReticle();
  //leftReticle.moveReticle();
  for (int i = 0; i < cards.size(); i++) {
    Projectile c = cards.get(i);
    c.drawProjectile();
    c.moveProjectile();
  }

  drawCharacter();

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
  }
  if (shoot == true) {
    Projectile c = new Projectile(885, 200);
    cards.add(c);
  }
}

void keyReleased( ) {
  if (shoot == true) {
    shoot = false;
  }
}
