boolean GameStart = true;
PImage Game;
PImage Start;

void setup() {
  size(1000, 400);
  background (255);
  imageMode(CENTER);
  Game = loadImage("Game.jpeg");
  Start = loadImage("Start.jpeg");
}

void draw() {
  if (GameStart == true) {
    GameStart();
  }
  else background(255);
}

void keyPressed() {
  if (GameStart == true){
    GameStart = false;
  }
}
