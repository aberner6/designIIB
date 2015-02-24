Bubble blagh;
int number = 5;

Square s;

void setup() {
  size(500, 500);
  blagh = new Bubble();

  s = new Square();
}

void draw() {
  background(255);
  blagh.move(); 
  blagh.bounce();
  blagh.display();

  s.bounce();
  s.move();
  s.display();
}


