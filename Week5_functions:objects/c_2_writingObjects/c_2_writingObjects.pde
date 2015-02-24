Bubble b;

void setup(){
  size(500,500);
 b = new Bubble();
}

void draw(){
  background(255);
 b.ascend(); 
 b.display();
}
























//?
//class Bubble{
//
//}


void mousePressed(){
 b.pop(); 
}
