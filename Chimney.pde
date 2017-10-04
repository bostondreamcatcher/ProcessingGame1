class Chimney {

  //this is instance variable that stores the paretheses argument in below constructor
  int cX, cY, cW, cH;
  color chimneyColor = color(150, 120, 100);

  //constructor for the chimney, rewritten to incorporate these arguments 
  Chimney (int chimneyX, int chimneyY, int chimneyW, int chimneyH) {//temporary local variable
    cX = chimneyX;
    cY = chimneyY;
    cW = chimneyW;
    cH = chimneyH;
  }

  void display () {

    // draw the 7 chimney from the left to the right
    fill(chimneyColor);
    rect(cX, cY, cW, cH);
  }
}