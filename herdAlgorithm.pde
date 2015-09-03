void setup() {
  int amt = 200;
  size(500, 500);
  insects = new insect[amt];
  for (int i = 0; i < amt; i++) {
    insects[i] = new insect(random(0, width), random(0, height), 3, random(0, 90));
  }
}

insect insects[];


void draw() {
  background(0);
  for (insect i : insects) {
    i.display();
    getFlock(i);
  }
}

//Implements the short distance repulsion part of algorithm
//This one is very simplistic, I should complicate it.
//Basically just increment theta if the distance gets less that a specified value
PVector cohesion(insect i, ArrayList<insect> flock) {
  PVector coh = new PVector(0, 0);

  for (insect mem : flock) {
    coh.add(mem.pos);
  }
  
  coh.div(flock.size());
  
  coh.sub(i.pos);
  coh.div(100);
  return coh;
}

PVector seperation(insect i, ArrayList<insect> flock) {
  PVector sep = new PVector(0,0);
  
  
  for(insect mem : flock) {
    if(dist(mem.pos.x, mem.pos.y, i.pos.x, i.pos.y) < 15) {
      PVector temp = new PVector(mem.pos.x, mem.pos.y);
      
      temp.sub(i.pos);
      sep.sub(temp);
        
    }
  }
  return sep;
}


PVector alignment(insect i, ArrayList<insect> flock) {
  PVector ali = new PVector(0,0);
  
  for(insect mem : flock) {
    ali.add(mem.vel);
  //  mem.vel.sub(mem.vel);
  }
  ali.div(flock.size());
  
  ali.div(10);
  return ali;
  
}

