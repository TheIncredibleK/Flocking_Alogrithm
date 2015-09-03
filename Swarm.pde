//Rules to follow
//1. Seperation: Avoid crowds/overlapping (Short range repulsion)
//2. Cohesion: Steer towards average position of neighbours (Long range attraction_)
//3. Allignment: Steer towards average heading of neighbours

class insect {
  PVector pos;
  PVector vel;
  int size;
  float speed;
  float theta;
  boolean runOn;
  
  
  //Basic constructor
   insect(float x, float y, int size, float theta) {
    this.pos = new PVector(x, y);
    this.vel = new PVector(0,0);
    this.size= size;
    speed = .5;
    this.theta = theta;
    runOn = true;
  }
  
  //Displays the insects
  void display() {
    stroke(255);
    noFill();
    ellipse(pos.x, pos.y, size, size);
    check();
  }
  
  //Moves it across the screen acording to the direction of a circle it's 'facing'
  /*void move() 
  {
    float newx = x + ((size/2) * (cos(radians(theta))*speed));
    float newy = y + ((size/2) * (sin(radians(theta))*speed));
    
    x = newx;
    y = newy;
  }*/
  void check() {
    if(this.pos.x < 0) {
      this.pos.x = width;
    }
    if(this.pos.x > width) {
      this.pos.x = 0;
    }
    if(this.pos.y > height) {
      this.pos.y = 0;
    }
    if(this.pos.y < 0) {
      this.pos.y = height;
    }
  }
}
