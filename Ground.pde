class Ground {

  //this is instance variable that stores the paretheses argument in below constructor
  int gdX, gdY;
  color groundColor = color(100, 70, 50);

  Ground(int groundX, int groundY) {//temporary local variable
    gdX= groundX;
    gdY= groundY;
  }

  void display() {
    //draw the ground
    fill(groundColor);
    rect(gdX, gdY, 1000, 20);
  }
}