ArrayList<rProjectile> rcards;
ArrayList<lProjectile> lcards;

boolean rshoot = false;
boolean lshoot = false;
//variables to determine Game States
boolean gameStart = true;
boolean gameOver = false;


//PImage Library
PImage Game;
PImage Start;
PImage Restart;
PImage Pink;
PImage Green;

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
  //load PImages
  Game = loadImage("Game.png");
  Start = loadImage("Start.png");
  Restart = loadImage ("Restart.png");
  Pink = loadImage ("Pink.png");
  Green = loadImage ("Green.png");
  //load ArrayList
  rcards = new ArrayList<rProjectile>();
  lcards = new ArrayList<lProjectile>();
}

void draw() {
  background (0);
  //Display Start Screen
  if (gameStart == true) {
    GameStart();
  } else background(0);

  //call Reticle functions draw and move reticles
  if (gameStart == false && gameOver == false) {
    rightReticle.drawrReticle();
    rightReticle.moverReticle();
    leftReticle.drawlReticle();
    leftReticle.movelReticle();
    //card Array List functions call
    for (int i = 0; i < rcards.size(); i++) {
      rProjectile c = rcards.get(i);
      c.drawrProjectile();
      c.moverProjectile();
    }
     for (int i = 0; i < lcards.size(); i++) {
      lProjectile c = lcards.get(i);
      c.drawlProjectile();
      c.movelProjectile();
    }
    //calls the draw character functions
    drawCharacter(0, false);
    drawCharacter(1000, true);
  }
  //game over condition
 if (rcards.size() >= 1) {
  if (rcards.get(0).position.x < 55) {
   gameOver = true;
    
    image(Game, width/2, 75, Game.width/12, Game.height/12);
    image(Pink, width/2, 175, Pink.width/12, Pink.height/12);
    image(Restart, width/2, 300, Restart.width/12, Restart.height/12);
}
 }
 if (lcards.size() >= 1) {
  if (lcards.get(0).position.x > 945) {
   gameOver = true;
    image(Game, width/2, 75, Game.width/12, Game.height/12);
    image(Green, width/2, 175, Green.width/12, Green.height/12);
    image(Restart, width/2, 300, Restart.width/12, Restart.height/12);
}
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
    rshoot = true;
  }
  if (key == 'w') {
    lReticleUp = true;
  }
  if (key == 's') {
    lReticleDown = true;
  }
  if (key == 'a' || key == 'd') {
    lshoot = true;
  }
  if (lshoot == true) {
    lProjectile c = new lProjectile(105, leftReticle.position.y);
    lcards.add(c);
  }
  if (rshoot == true) {
    rProjectile c = new rProjectile(895, rightReticle.position.y);
    rcards.add(c);
  }
  if (gameOver == true) {
    background (0);
    gameOver = false;
    gameStart = true;
  rcards = new ArrayList<rProjectile>();
  lcards = new ArrayList<lProjectile>();
  }
}

void keyReleased () {
  if (rshoot == true) {
    rshoot = false;
  }
    if (lshoot == true) {
    lshoot = false;
  }
  if (keyCode == UP) {
    rReticleUp = false;
  }
  if (keyCode == DOWN) {
    rReticleDown = false;
  }
  if (key == 'w') {
    lReticleUp = false;
  }
  if (key == 's') {
    lReticleDown = false;
  }
}
