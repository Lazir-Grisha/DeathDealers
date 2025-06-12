class rProjectile {

  //Data
  public PVector position;
  PVector velocity;
  PVector acceleration;

  float wsize; //width
  float hsize; //height
  
//Constructor
  rProjectile(float x, float y) {
    //885, 200
    wsize = 50;
    hsize = 10;
    acceleration = new PVector (-0.1, 0);
    velocity = new PVector (0, 0);
    position = new PVector(x, y);
  }


  void moverProjectile() {
    velocity.add(acceleration);
    position.add(velocity);
  }


  void drawrProjectile() {
    r = 249;
    g = 121;
    b = 0;
    fill (r, g, b);
    rect (position.x, position.y, 50, 10);
  }
  }
