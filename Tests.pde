//Gets the flock objects for each member of insects
void getFlock(insect i) {
  ArrayList<insect> flock = new ArrayList<insect>();
  for (insect j : insects) {
    if ( i != j ) {
      if (dist(i.pos.x, i.pos.y, j.pos.x, j.pos.y) < 50) {

        flock.add(j);
      }
    }
  }
  PVector rule1 = cohesion(i, flock);
  PVector rule2 = seperation(i, flock);
  PVector rule3 = alignment(i, flock);
  PVector rule4 = keepOnScreen(i);
  
  i.vel.add(rule1);
  i.vel.add(rule2);
  i.vel.add(rule3);
  i.vel.add(rule4);
  i.vel.limit(2);
  i.pos.add(i.vel);
}



  
  



