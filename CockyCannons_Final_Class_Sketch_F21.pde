class Mover {

  //[full] Our object has two PVectors: location and velocity.
  PVector location;
  PVector velocity;
  PVector acc;
  float radius;
  float yr;
 
  //[end]

  Mover(float x, float y, float xSpeed, float r,float yyr, float p) {
    location = new PVector(x,y);
     yr = yyr;
    velocity = new PVector(xSpeed,yr);
    radius = r;
     acc = new PVector(0,p);
  
  }

void update() {
    // Motion 101: Location changes by velocity.
    
    velocity.sub(acc);
    //print(velocity);
    location.sub(velocity);
     if (location.x >1100) {
      acc.y=0;
      velocity.x=0;
      velocity.y=0;
      location.x=125;
      location.y=125;
      for (int count=0;count<10;count++){
      line(count,count,count,count);
     // int x=1;
      strokeWeight(count);
     // x++;
      }
    }
 
    
}


 void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,radius,radius);
    }
}

void mousePressed(){
if ((mouseX>=950)&(mouseY<=50)){
//background(200);
m.velocity.x=-10;
m.acc.y=.098;
}
if ((mouseX>=950)&(mouseY>=950)){
//background(200);
obj2.velocity.x=-5;
obj2.acc.y=.098;
}
}     
