Mover m;

void setup() {
  size(1000,1000);
  
  m = new Mover(30,30,-10,50,0);
}



void draw() {
  background(255);
   m.update();
 m.display();

}
