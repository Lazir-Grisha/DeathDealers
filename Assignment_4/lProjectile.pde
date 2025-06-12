class lProjectile {

  //Data
  PVector position;
  PVector velocity;
  PVector acceleration;

  float wsize; //width
  float hsize; //height

  //Constructor
  lProjectile(float x, float y) {
    //885, 200
    wsize = 50;
    hsize = 10;
    acceleration = new PVector (+0.1, 0);
    velocity = new PVector (0, 0);
    position = new PVector(x, y);
  }


  void movelProjectile() {
    velocity.add(acceleration);
    position.add(velocity);
  }


  void drawlProjectile() {
    r = 19;
    g = 156;
    b = 255;
    fill (r, g, b);
    rect (position.x, position.y, 50, 10);
  }

  boolean Pintersect(rProjectile r) {
    float distance = dist(position.x, position.y, r.position.x, r.position.y);
    if ((distance < wsize + r.wsize) && (distance< hsize + r.hsize)) {
      return true;
    } else {
      return false;
    }
  }
  
  boolean rBarrier(rReticle r) {
    float distance = dist (position.x, position.y, r.position.x, r.position.y);
    if ((distance < wsize + r.wsize) && (distance< hsize + r.hsize)) {
      return true;
    } else {
      return false;
    }
  }
}
