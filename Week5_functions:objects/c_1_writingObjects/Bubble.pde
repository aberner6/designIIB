class Bubble{
 float x = 25;
 int speed = 1;
 
 void move(){
   x = x+speed;
 }

 void bounce(){
  if(x<25 || x>50){
   speed = speed*-1; 
  }
 }


 void display(){
   fill(255);
   stroke(0);
  ellipse(x,100,5,5);
 } 
  
  
}
