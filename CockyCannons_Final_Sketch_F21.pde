Mover m;
Mover obj2;
//Sets the screen size
int xSpeed1=0;
  int xSpeed2=0;
  float acc1=0;
  float acc2=0;
 

  
void setup(){
size(1000,1000);

 
  m = new Mover(125,125,xSpeed1,50,0,acc1);
  obj2 = new Mover(125,125,xSpeed2,50,0,acc2);


//mover = new Mover(30,30,-10,50,0);
}
//draws
void draw(){
//sets up structures
background (255);
//m.display();
//m.update();
rect(0,200,200,1000);
triangle(100,150,75,200,125,200);
rect(100,100,100,50);
rect(950,0,50,50);
rect(950,950,50,50);
m.display();
m.update();
obj2.display();
obj2.update();
print(xSpeed1);
}
//changes the background color when pressed
