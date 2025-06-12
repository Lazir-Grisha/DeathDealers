//Array Lists for projectiles setting them as card variables

ArrayList<rProjectile> rcards;
ArrayList<lProjectile> lcards;

//a variable to determine whether or not a projectile has been fired

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

//Reticle Variables to determine movement

boolean rReticleUp = false;
boolean rReticleDown = false;
boolean lReticleUp = false;
boolean lReticleDown = false;

//Set Reticle as rightReticle variable

rReticle rightReticle = new rReticle();

//Set Reticle as leftReticle variable

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
  
  //load ArrayList for projectiles
  
  rcards = new ArrayList<rProjectile>();
  lcards = new ArrayList<lProjectile>();
}

void draw() {
  
  //set the background to black
  
  background (0);

  //Display Start Screen if in Game Start Mode
  
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

    //Collision for cards with themselves

    for (int j = lcards.size()-1; j >= 0; j--) {
      for (int i = rcards.size()-1; i >= 0; i--) {
        if (lcards.get(j).Pintersect(rcards.get(i)) == true) {
          rcards.remove(i);
          lcards.remove (j);
        }
      }
    }

    //Collision for cards with reticles

    for (int i = lcards.size()-1; i >= 0; i--) {
      if (lcards.get(i).rBarrier(rightReticle) == true) {
        println("i");
        lcards.remove (i);
      }
    }
    for (int i = rcards.size()-1; i >= 0; i--) {
      if (rcards.get(i).lBarrier(leftReticle) == true) {
        rcards.remove (i);
      }
    }

    //use of drawCharacter() function to draw the player icons

    drawCharacter(0, false);
    drawCharacter(1000, true);
  }



  //game over conditions for right and left card

  if (rcards.size() >= 1) {
    if (rcards.get(0).position.x < 55) {
      gameOver = true;

      //Game Pink Wins

      image(Game, width/2, 75, Game.width/12, Game.height/12);
      image(Pink, width/2, 175, Pink.width/12, Pink.height/12);
      image(Restart, width/2, 300, Restart.width/12, Restart.height/12);
    }
  }
  if (lcards.size() >= 1) {
    if (lcards.get(0).position.x > 945) {
      gameOver = true;

      //Game Green Wins

      image(Game, width/2, 75, Game.width/12, Game.height/12);
      image(Green, width/2, 175, Green.width/12, Green.height/12);
      image(Restart, width/2, 300, Restart.width/12, Restart.height/12);
    }
  }
}

void keyPressed() {
  //ends game start if space is pressed

  if (gameStart == true && key == ' ') {
    gameStart = false;
  }

  //if statements to move the right reticle using arrow keys and shoot

  if (keyCode == UP) {
    rReticleUp = true;
  }
  if (keyCode == DOWN) {
    rReticleDown = true;
  }
  if (keyCode == LEFT || keyCode == RIGHT) {
    rshoot = true;
  }

  //if statements to move the left reticle using WASD and shoot

  if (key == 'w') {
    lReticleUp = true;
  }
  if (key == 's') {
    lReticleDown = true;
  }
  if (key == 'a' || key == 'd') {
    lshoot = true;
  }
  
  //if statments to spawn new projectiles from Array List
  
  if (lshoot == true) {
    lProjectile c = new lProjectile(105, leftReticle.position.y);
    lcards.add(c);
  }
  if (rshoot == true) {
    rProjectile c = new rProjectile(895, rightReticle.position.y);
    rcards.add(c);
  }
  
  //if statement to reinitialize array (preventing freezing) and restart the game when space is pressed
  
  if (gameOver == true && key == ' ') {
    background (0);
    gameOver = false;
    gameStart = true;
    rcards = new ArrayList<rProjectile>();
    lcards = new ArrayList<lProjectile>();
  }
}

void keyReleased () {
  
  //if statment to ensure one only shoots as long as key is pressed
  
  if (rshoot == true) {
    rshoot = false;
  }
  if (lshoot == true) {
    lshoot = false;
  }
  
  //if statement to ensure one only moves when keys are pressed and stops when released
  
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
