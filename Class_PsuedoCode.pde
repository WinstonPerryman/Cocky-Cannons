class Mover { //declare class

  //[full] Our object has two PVectors: location and velocity.
  PVector location;//create PVectors and float variables
  PVector velocity;
  PVector acc;
  float radius;
  float yr;
 
  //[end]

  Mover(float x, float y, float xSpeed, float r,float yyr, float p) {//define constructors
    location = new PVector(x,y);//create PVectors
     yr = yyr;
    velocity = new PVector(xSpeed,yr);
    radius = r;
     acc = new PVector(0,p);
  
  }

void update() {
    // Motion 101: Location changes by velocity.
    
    velocity.sub(acc);//velocity minus acceleration
    //print(velocity);
    location.sub(velocity);//changes location based upon velocity
     if (location.x >1100) {//if the location of the object passes a certain bound return to origin
      acc.y=0;
      velocity.x=0;
      velocity.y=0;
      location.x=125;
      location.y=125;
      for (int count=0;count<10;count++){//for loop
      line(count,count,count,count);
     // int x=1;
      strokeWeight(count);
     // x++;
      }
    }
 
    
}


 void display() {//create elipse 
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,radius,radius);
    }
}

void mousePressed(){// if the mouse is pressed withou=in the area of the box then update location and acceleeration values
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
