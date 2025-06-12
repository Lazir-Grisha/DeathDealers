void drawCharacter(int xpos, boolean direction) {


  //draw Pink Character

  //set colour to Pink
  if (direction == true){
  r=244;
  g= 5;
  b = 247;

  ////draw the character
  noStroke();
  fill (r+9, g+98, b+8);
  rect(xpos, 105, 40, 50);
  rect(xpos, 105, 60, 10);
  fill(r, g, b);
  rect(xpos, 205, 80, 150);
  rect(xpos, 390, 100, 20);
  rect(xpos, 355, 60, 50);
  fill (r-98, g-5, b-99);
  rect(xpos, 60, 20, 40);
  rect(xpos, 305, 40, 50);
  }
  //draw Green Character

  //set colour to Green
  if (direction == false){
  r= 87;
  g = 254;
  b =13;

  ////draw the character
  noStroke();
  fill (r+50, g+1, b+72);
  rect(xpos, 105, 40, 50);
  rect(xpos, 105, 60, 10);
  fill(r, g, b);
  rect(xpos, 205, 80, 150);
  rect(xpos, 390, 100, 20);
  rect(xpos, 355, 60, 50);
  fill (r-49, g-130, b-13);
  rect(xpos, 60, 20, 40);
  rect(xpos, 305, 40, 50);
  }
}
