class lReticle {
  //Data
  public PVector position;
  PVector velocity;


  //Constructor
  lReticle() {
    position = new PVector(70, 200);
    velocity = new PVector (0, 0);
  }

  void drawlReticle() {
    noStroke();
    r = 249;
    g = 121;
    b = 0;
    fill (r, g, b);
    rect(position.x, position.y, 20, 50);
  }

  void movelReticle() {
    position.add(velocity);
    if (position.y >= 25 && lReticleUp == true && lReticleDown == false) {
      velocity.y = -1;
    } else if (position.y <=375 && lReticleDown == true && lReticleUp == false) {
      velocity.y = +1;
    } else velocity.y = 0;
  }
}
