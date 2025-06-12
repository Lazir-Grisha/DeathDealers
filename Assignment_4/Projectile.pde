class Projectile {

  //float spawnLocation = 200;
  //Data
  PVector position;
  PVector velocity;
  PVector acceleration;

  float wsize; //width
  float hsize; //height
  
//Constructor
  Projectile(float x, float y) {
    //885, 200
    wsize = 50;
    hsize = 10;
    acceleration = new PVector (-0.1, 0);
    velocity = new PVector (0, 0);
    position = new PVector(x, y);
  }


  void moveProjectile() {
    velocity.add(acceleration);
    position.add(velocity);
  }


  void drawProjectile() {
    stroke (255);
    r = 249;
    g = 121;
    b = 0;
    fill (r, g, b);
    rect (position.x, position.y, 50, 10);
  }
  }
