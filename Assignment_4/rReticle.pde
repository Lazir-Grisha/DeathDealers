class rReticle {
  //Data
  public PVector position;
  PVector velocity;


  //Constructor
  rReticle() {
    position = new PVector(930, 200);
    velocity = new PVector (0, 0);
  }

  void drawrReticle() {
    noStroke();
    r = 249;
    g = 121;
    b = 0;
    fill (r, g, b);
    rect(position.x, position.y, 20, 50);
  }

  void moverReticle() {
    position.add(velocity);
    if (position.y >= 25 && rReticleUp == true && rReticleDown == false) {
      velocity.y = -1;
    } else if (position.y <=375 && rReticleDown == true && rReticleUp == false) {
      velocity.y = +1;
    } else velocity.y = 0;
  }
}
