class Particle {

  float x, y;
  float r;
  color col;

  Particle(float tempX, float tempY, float tempR) {
    x = tempX;
    y = tempY;
    r = tempR;
    col = color(0);
  }

  boolean overlaps(Particle other) {
    float d= dist(x, y, other.x, other.y);
    if (d<r+other.r) { //if the circles overlap
      col = color(0, 255, 0, 100); //change color to be green
      other.col = color(255, 0, 0, 100); //change color to be red
      return true;
    }
    else { //if the circles DON'T overlap
      col = color(0, 100); //black
      other.col = color(0, 100); //black
      return false;
    }
  }

  void display() {
    stroke(255);
    fill(col);
    ellipse(x, y, r*2, r*2);
  }
}

