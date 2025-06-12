class Projectile {

  //float spawnLocation = 200;
  //Data
  PVector position;
  PVector velocity;
  PVector acceleration;

  Projectile() {
    //885, 200
    position = new PVector(885, 200);
    velocity = new PVector (0, 0);
    acceleration = new PVector (-0.1, 0);
  }

  void drawProjectile() {
    noStroke();
    r = 249;
    g = 121;
    b = 0;
    fill (r, g, b);
    rect (position.x, position.y, 50, 10);
  }
  void moveProjectile() {
    velocity.add(acceleration);
        position.add(velocity);
  }
}
