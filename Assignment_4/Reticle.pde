class Reticle {
  //Data
  public PVector position;
  PVector velocity;
  

  //Constructor
  Reticle() {
    position = new PVector(910, 200);
    velocity = new PVector (0, 0);
  }

  void drawReticle() {
    noStroke();
    r = 249;
  g = 121;
  b = 0;
    fill (r, g, b);
    rect(position.x, position.y, 20, 50);
    
  }

  void moveReticle() {
    position.add(velocity);
    if (position.y >= 25 && ReticleUp == true && ReticleDown == false) {
      velocity.y = -1;
    } else if (position.y <=375 && ReticleDown == true && ReticleUp == false) {
      velocity.y = +1;
    } else velocity.y = 0;
  }
}
