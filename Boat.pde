 class Boat {

  //this is instance variable that stores the paretheses argument in below constructor
  float boatX, boatY, boatSpeed;
  color boatColor = color(119, 34, 211); 

  //constructor of the boat, rewritten to incorporate these arguments 
  Boat (float x, float y, float speed) {//temporary local variable
    boatX = x;
    boatY = y;
    boatSpeed = speed;
  }

  //move the boat
  void move (int x) {
    if (boatX+x <= width) {//if boat x position/horizonal less than canvas width, the boat keeps moving to the right 
      boatX+=x;
    } else {
      boatX = -90;
    }
  }

  //draw the boat 
  void display (float x, float y) {

    fill(boatColor);//color is defined in local variable on the top
    noStroke();//no outline
    rect(x, y, 90, 20); //draw a rectangle as boat body
    triangle(x+45, y+10, x+45, y-35, x+25, y-15);//draw a triangle as boat sail
  }
}