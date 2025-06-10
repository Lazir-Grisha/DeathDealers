boolean GameStart = true;
PImage Game;

void setup() {
  size(1000, 400);
  background (255);
  imageMode(CENTER);
  Game = loadImage("Game.jpeg");
}

void draw() {
  if (GameStart == true) {
    GameStart();
  }
}
