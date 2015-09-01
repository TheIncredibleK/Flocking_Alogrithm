void setup() {
  int amt = 60;
  size(500, 500);
  insects = new insect[amt];
  for(int i = 0; i < amt; i++) {
    insects[i] = new insect(random(0, width), random(0, height), 3, random(0, 90));
  }
}

insect insects[];


void draw() {
  background(0);
  for(insect i : insects) {
    i.display();
    getFlock();
    getNonFlock();
  }
}

//Implements the short distance repulsion part of algorithm
//This one is very simplistic, I should complicate it.
//Basically just increment theta if the distance gets less that a specified value
void seperation(insect i, ArrayList<insect> flock) {
  for(insect check : flock) {
    //int count = 0;
    if(dist(i.x, i.y, check.x, check.y) < (i.size*15) && i.runOn == true) {
      stroke(255, 0, 0);
     // ellipse(i.x, i.y, i.size*15, i.size*15);
      stroke(255);
     float checkx = i.x - check.x;
     float checky = i.y - check.y;
     float biggest = checkx;
     
     if(checkx < checky) {
       biggest = checky;
     }
     if(biggest < 0) {
       i.theta-= .1;
       check.runOn = false;
     }
     else {
       i.theta += .1;
       check.runOn = false;
     }
      
    } else {
      i.runOn = true;
    }
  }
}



void alignment(insect i, ArrayList<insect> flock) {
  float total = 0;
  for(insect check : flock) {
    total = total + check.theta;
  }
  total = total/flock.size();
  i.theta =
    
}
    

