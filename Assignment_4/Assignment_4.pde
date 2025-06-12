ArrayList<Projectile> cards;

boolean shoot = false;
//variables to determine Game States
boolean gameStart = true;
boolean gameOver = false;


//PImage Library
PImage Game;
PImage Start;

//Colour Variables
int r;
int g;
int b;

//Reticle Variables
boolean rReticleUp = false;
boolean rReticleDown = false;
boolean lReticleUp = false;
boolean lReticleDown = false;

//Call Right reticle class
rReticle rightReticle = new rReticle();

//Call Left Reticle class
lReticle leftReticle = new lReticle();


void setup() {
  //sets canvas size and initializes array lists and PImage
  size(1000, 400);
  imageMode(CENTER);
  rectMode(CENTER);
  Game = loadImage("Game.png");
  Start = loadImage("Start.png");
  cards = new ArrayList<Projectile>();
}

void draw() {
  background (0);
  //Display Start Screen
  if (gameStart == true) {
    GameStart();
  } else background(0);

  //call Reticle functions
  if (gameStart == false && gameOver == false) {
    rightReticle.drawrReticle();
    rightReticle.moverReticle();
    leftReticle.drawlReticle();
    leftReticle.movelReticle();
    //card Array List functions call
    for (int i = 0; i < cards.size(); i++) {
      Projectile c = cards.get(i);
      c.drawProjectile();
      c.moveProjectile();
    }
    drawCharacter(0, false);
    drawCharacter(1000, true);
  }
  if (gameOver == true) {
    gameOver = false;
    gameStart = true;
  }
}

void keyPressed() {
  if (gameStart == true) {
    gameStart = false;
  }
  if (keyCode == UP) {
    rReticleUp = true;
  }
  if (keyCode == DOWN) {
    rReticleDown = true;
  }
  if (keyCode == LEFT || keyCode == RIGHT) {
    shoot = true;
  }
  if (shoot == true) {
    Projectile c = new Projectile(885, rightReticle.position.y);
    cards.add(c);
  }
  if (gameOver == true) {
    gameOver = false;
    gameStart = true;
  }
}

void keyReleased () {
  if (shoot == true) {
    shoot = false;
  }
  if (keyCode == UP) {
    rReticleUp = false;
  }
  if (keyCode == DOWN) {
    rReticleDown = false;
  }
}
