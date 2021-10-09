Mover mover;
//Sets the screen size
void setup(){
size(1000,1000);
mover = new Mover(30,30,-10,50,0);
}
//draws
void draw(){
//sets up structures
background (255);
mover.update();
mover.display();
rect(0,200,200,1000);
triangle(100,150,75,200,125,200);
rect(100,100,100,50);
rect(950,0,50,50);
rect(950,950,50,50);
}
//changes the background color when pressed
void mousePressed(){
if ((mouseX>=950)&(mouseY<=50)){
background(200);
}
if ((mouseX>=950)&(mouseY<=50)){
background(200);
}
