void drawCharacter() {
    //set colour to orange
  r = 249;
  g = 121;
  b = 0;
    //draw the character
  noStroke();
  fill (r+6, g+35, b+63);
  rect(width/2, 105, 40, 50);
  rect(width/2, 105, 60, 10);
  fill(r, g, b);
  rect(width/2, 205, 80, 150);
  rect(width/2, 390, 100, 20);
  rect(width/2, 355, 60, 50);
  fill (r-65, g-32, b);
  rect(width/2, 60, 20, 40);
  rect(width/2, 305, 40, 50);

}
