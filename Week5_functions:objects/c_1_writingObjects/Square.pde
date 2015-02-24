class Square {
  
  int x;
  int speed = 10;
  
  void bounce() {
    if (x>width || x<0) {
      speed = speed*-1;
    }
  }

  void move() {
    x+=speed;
  }

  void display() {
    fill(0);
    rect(x, height/2, 30, 30);
  }
}

