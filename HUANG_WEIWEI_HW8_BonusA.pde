//declare the tree, bird and star array 
Tree []trees = new Tree[5];//an array for 5 trees
Bird []birds = new Bird[4];//an array for 4 birds
Star []stars=new Star[30];//an array for 20 stars
//declare other global variables
Moon m;
Building b;
Wheel w;
Boat bt;

void setup() {
  size(1000, 700);//set up the canvas 1000*700 pixels 

  for (int n=0; n<stars.length; n++) {//initialized the array for stars
    stars[n]=new Star(int(random(width)), int(random(height/2)), 10);//initialize each star using n for loop
  }

  for (int j=0; j<birds.length; j++) {//initialized the array for birds
    birds[j] = new Bird(550+j*100, 150-j*10, color(random(255), random(255), random(255)));//initialize each bird using n for loop
  }

  for (int i=0; i<trees.length; i++) {//initialized the array for trees
    trees[i] = new Tree(150+i*80, 540, 30, 40);//initialize each tree using n for loop
  }

  m= new Moon();//initialize moon object in setup() by calling constructor
  b= new Building(80, 450);//arguments go inside the paretheses when the object is constructed
  w= new Wheel(500, 365);//initialize wheel object in setup() by calling constructor with two arguments x and y position 
  bt= new Boat(150, 670, 1);//initialize wheel object in setup() by calling constructor with three arguments
}

void draw() {
  m.display();//operate the moon object in draw() by calling object methods using dots syntax
  b.display();//operate the building object in draw() by calling object methods using dots syntax

  for (int j=0; j<birds.length; j++) {//run each bird using j for loop
    birds[j].display();
  }
  for (int i=0; i<trees.length; i++) {//run each tree using i for loop
    trees[i].display();
  }
  if (mouseX<=600) {//when the mouse move horizonally to the right, the background color change to blue and no stars showing up 
    for (int n=0; n<stars.length; n++) {//run each star using n for loop
      stars[n].display();
    }
  }
  w.display();//operate the wheel object in draw() by calling object methods using dots syntax

  bt.display(bt.boatX, bt.boatY);//operate the boat object in draw() by calling object methods using dots syntax
  bt.move(2);//operate the boat object in draw() by calling object methods using dots syntax
  w.spin();//operate the wheel object in draw() by calling object methods using dots syntax
}