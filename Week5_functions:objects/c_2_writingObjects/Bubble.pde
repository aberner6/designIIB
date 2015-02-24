class Bubble{
  //data - variables declared
  float x;
  float y;
  int r = 0;
  int g = 255;
  int b = 100;
  
  Bubble(){
   x = width/2;
  y = height; 
  }
  //functionality
  void ascend(){
    y--;
  }
  void pop(){
    r = 255;
  }
  void display(){
    stroke(0);
    fill(r,g,b);
    ellipse(x,y,64,64);
  }
  
}
