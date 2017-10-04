class Wheel {
  
 //this is instance variable that stores the paretheses argument in below constructor
  int wX, wY; 
  float spin=0;//initialized the value of wheel spin as zero
  color spokeColor;//initialized spoke color no value because I will input the value when I call it later with other function. 
  color wheelColor = color(0, 130, 255);//initialized wheel color
  color platformColor = color(0,100,245);//initialized platform color

  
  //constructor for wheel, rewritten to incorporate these arguments 
    Wheel (int wheelX, int wheelY) {//temporary local variable
    wX = wheelX;
    wY = wheelY;
}

//draw the wheel
void display(){
  
  // make the color and thickness of the wheel
  stroke(wheelColor);
  strokeWeight(20);
  noFill();
  
  
  //draw the outer wheel
  ellipse(500, wY, 540, 540);
  
  // reset fill and remove stroke for these shapes
  //noStroke();
  //fill(0, 0, 0);
  
  // make the center of the ferris wheel
  ellipse(wX, wY, 30, 30);
  
   // change the stroke to make the legs of the ferris wheel
  stroke(color(0, 130, 255));
  strokeWeight(20);
  // create the two angled ferris wheel legs
  line(wX, wY, 430, 620);
  line(wX, wY, 560, 620);


  
  //draw the base of the ferris wheel
  //draw the left base
  fill(wheelColor);
  rectMode(CORNER);
  rect(wX-130, wY+250, 40, 80);
  //draw the left base
  rect(wX+90, wY+250, 40, 80);
  //draw the platform top
  rect(wX-180, wY+280, 360, 5);
  
  //draw the platform bottom and change darker blue
  fill(platformColor);
  rect(wX-200, wY+310, 400, 10); 
}

//set up function
void spin(){
  
  if (mousePressed == true) {
    fill(166, 62, 219);
  } else { fill(0);}
    // change the stroke to make the spokes
  stroke(color(10, 10, 10));
  strokeWeight(2);

  // need to rotate to make the spokes of the wheel
  translate(wX, wY);
  rotate(spin + mouseX/20);
  if (frameCount % 25 == 0) {
    spokeColor = color(random(255), random(255), random(255));
  }
  stroke(spokeColor);
  
  
 int i=0; //a variable to mark the degree
  while (i < 38) { //testing
    rotate(radians(3*PI)); // draw inside of the full wheel
    rect(0, 0, 2, 270); // spoke locate in the center with its width and height
    ellipse(290, 0, 25, 25); // cabin on the wheel
    i ++;//keep adding while it is rotating
  }
  spin=spin-(PI/800);//speed of the wheel rotating, the larger the number is, it gets slower, more realistic
  
}
}