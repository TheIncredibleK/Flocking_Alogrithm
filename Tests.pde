//Gets the flock objects for each member of insects
void getFlock() {
  for(insect i : insects) {
    ArrayList<insect> flock = new ArrayList<insect>();
    for(insect j : insects) {
      if( i != j ) {
        if(dist(i.x, i.y, j.x, j.y) < 50) {
          
          flock.add(j);
        }
      }
    }

    //seperation(i, flock);
    alignment(i, flock);
  }
}
//Gets the non flock members for each insect in insects
void getNonFlock() {
  for(insect i : insects) {
    ArrayList<insect> Nonflock = new ArrayList<insect>();
    for(insect j : insects) {
      if( i != j ) {
        if(dist(i.x, i.y, j.x, j.y) > 25) {
          Nonflock.add(j);
        }
      }
    }
  
  //cohesion(i, Nonflock);
  }
}
