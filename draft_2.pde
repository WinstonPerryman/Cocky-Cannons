Mover m;
Mover obj2;
void setup() {
  size(1000,1000);
  int xSpeed1=0;
  int xSpeed2=0;
  int acc1=0;
  int acc2=0;
  m = new Mover(30,30,xSpeed1,50,0,acc1);
  obj2 = new Mover(30,30,xSpeed2,50,0,acc2);
}




void draw() {
  background(255);
   m.update();
 m.display();
obj2.update();
obj2.display();

}
