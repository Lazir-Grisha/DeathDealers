void drawCharacter() {
int xpos = width/2;

  //draw Orange Character

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

  //draw Blue Character

  //set colour to blue
  r=19;
  g= 156;
  b = 255;

  //draw the character
  noStroke();
  fill (r+62, g+26, b);
  rect(width/2, 105, 40, 50);
  rect(width/2, 105, 60, 10);
  fill(r, g, b);
  rect(width/2, 205, 80, 150);
  rect(width/2, 390, 100, 20);
  rect(width/2, 355, 60, 50);
  fill (r-19, g-73, b-112);
  rect(width/2, 60, 20, 40);
  rect(width/2, 305, 40, 50);

  //draw Pink Character

  //set colour to Pink
  r=244;
  g= 5;
  b = 247;

  ////draw the character
  noStroke();
  fill (r+9, g+98, b+8);
  rect(width/2, 105, 40, 50);
  rect(width/2, 105, 60, 10);
  fill(r, g, b);
  rect(width/2, 205, 80, 150);
  rect(width/2, 390, 100, 20);
  rect(width/2, 355, 60, 50);
  fill (r-98, g-5, b-99);
  rect(width/2, 60, 20, 40);
  rect(width/2, 305, 40, 50);
  
  //draw Green Character
  
  //set colour to Green
  r= 87;
  g = 254;
  b =13;
  
    ////draw the character
  noStroke();
  fill (r+50, g+1, b+72);
  rect(xpos, 105, 40, 50);
  rect(width/2, 105, 60, 10);
  fill(r, g, b);
  rect(width/2, 205, 80, 150);
  rect(width/2, 390, 100, 20);
  rect(width/2, 355, 60, 50);
  fill (r-49, g-130, b-13);
  rect(width/2, 60, 20, 40);
  rect(width/2, 305, 40, 50);
}
