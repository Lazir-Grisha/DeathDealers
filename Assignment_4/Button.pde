class Button {

  int xpos;
  int ypos;

  Button() {
  }

  void drawButton () {
    rectMode (CENTER);
    stroke(0);
    noFill();
    rect(xpos, ypos, 40, 40);
  }

  void drawShield() {
    noStroke();
    fill(19, 156, 255);
    ellipse(xpos, ypos, 20, 20);
  }

  void drawBirdWing() {
    noStroke();
    fill(87, 254, 13);
    rect(xpos, ypos, 5, 10);
    rect(xpos+10, ypos+10, 5, 10);
    rect(xpos-10, ypos-10, 5, 10);
  }
  
  void drawQuickDraw() {
    noStroke();
    fill(249, 121, 0);
    rect(xpos, ypos, 20, 10);
  }
  
  void drawReshuffle() {
    noStroke();
    fill(244, 5, 247);
    rect(xpos-5, ypos-5, 10, 20);
    fill(255, 103, 255);
    rect(xpos+5, ypos+5, 10, 20);
  }
}
