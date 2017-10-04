class Bird {

  //this is instance variable that stores the paretheses argument in below constructor
  float bdX, bdY;
  color birdColor;

  //set up the constructor for the bird object, rewritten to incorporate these arguments 
  Bird(float birdX, float birdY, color bdcolor) {//temporary local variable
    bdX = birdX;
    bdY = birdY;
    birdColor = bdcolor;
  }

  //draw the bird
  void display() {

    fill(birdColor);//fill the bird color where it is defined in set up section 
    noStroke();
    //make two birds with triangels
    triangle(bdX, bdY, bdX-10, bdY-20, bdX-30, bdY-20);
    triangle(bdX, bdY, bdX+10, bdY-20, bdX+30, bdY-20);

    //move the bird, the opposite with the mouseX
    if (mouseX > width/2) {
      bdX++;
    } else {
      bdX--;
    }
    if (bdY > height/2 && bdY > height/2) {
      bdY--;
    } else {
      bdY++;
    }
  }
}