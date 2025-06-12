class lReticle {
  //Data
  public PVector position;
  PVector velocity;

  float wsize; //width
  float hsize; //height

  //Constructor
  lReticle() {
    wsize = 20;
    hsize = 50;
    position = new PVector(70, 200);
    velocity = new PVector (0, 0);
  }

  void drawlReticle() {
    noStroke();
    r = 19;
    g = 156;
    b = 255;
    fill (r, g, b);
    rect(position.x, position.y, wsize, hsize);
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
