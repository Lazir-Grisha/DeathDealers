class lProjectile {

  //Data

  PVector position;
  PVector velocity;
  PVector acceleration;

  float wsize; //width
  float hsize; //height

  //Constructor

  lProjectile(float x, float y) {

    //sets variables

    wsize = 50;
    hsize = 20;
    acceleration = new PVector (+0.1, 0);
    velocity = new PVector (0, 0);
    position = new PVector(x, y);
  }

  //function that controls movement using PVectors

  void movelProjectile() {
    velocity.add(acceleration);
    position.add(velocity);
  }

  //function that draws the individual projectiles

  void drawlProjectile() {
    
  //set colour to blue

    
    r = 19;
    g = 156;
    b = 255;
    fill (r, g, b);
    rect (position.x, position.y, 50, 15);
  }

  // function to track collison with other projectiles

  boolean Pintersect(rProjectile r) {
    float distance = dist(position.x, position.y, r.position.x, r.position.y);
    if ((distance < wsize + r.wsize) && (distance< hsize + r.hsize)) {
      return true;
    } else {
      return false;
    }
  }

  //function to track collison with reticles

  boolean rBarrier(rReticle r) {
    float distance = dist (position.x, position.y, r.position.x, r.position.y);
    if ((distance < wsize + r.wsize) && (distance< hsize + r.hsize)) {
      return true;
    } else {
      return false;
    }
  }
}
