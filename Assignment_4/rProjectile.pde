class rProjectile {

  //Data

  public PVector position;
  PVector velocity;
  PVector acceleration;

  float wsize; //width
  float hsize; //height

  //Constructor

  rProjectile(float x, float y) {

    //sets variables

    wsize = 50;
    hsize = 20;
    acceleration = new PVector (-0.1, 0);
    velocity = new PVector (0, 0);
    position = new PVector(x, y);
  }

  //function that controls movement using PVectors

  void moverProjectile() {
    velocity.add(acceleration);
    position.add(velocity);
  }

  //function that draws the individual projectiles


  void drawrProjectile() {
    
    //set colour to orange
    
    r = 249;
    g = 121;
    b = 0;
    fill (r, g, b);
    rect (position.x, position.y, 50, 15);
  }

  //function to track collison with reticles


  boolean lBarrier(lReticle r) {
    float distance = dist (position.x, position.y, r.position.x, r.position.y);
    if ((distance < wsize + r.wsize) && (distance< hsize + r.hsize)) {
      return true;
    } else {
      return false;
    }
  }
}
