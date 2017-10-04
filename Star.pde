class Star {

  //this is instance variable that stores the paretheses argument in below constructor
  float xpos;
  float ypos;
  float diameter;
  float targetX;
  float targetY;

  //constructor for stars, rewritten to incorporate these arguments 
  Star(float x, float y, float dia) {//temporary local variable
    xpos=x;
    ypos=y;
    diameter=dia;
  }

  void display() {
    fill(255);//fill white color for stars
    strokeWeight(random(20, 40)); //jittery "halo"
    stroke(250, 250, 237, 50);//semi-transparency color of the stroke around the stars
    ellipse(targetX, targetY, diameter, diameter);//draw the white stars

    //MOUSE INPUT: move with mouse y if left click-creating falling stars 
    if (mousePressed) {
      if (mouseButton == LEFT) {
        targetX = xpos;
        targetY = ypos+mouseY*.6;
      }
    } else { //return to stationary positions
      targetX = xpos;
      targetY = ypos;
    }
  }
}