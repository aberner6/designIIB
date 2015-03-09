// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-7: Drops one at a time

class Drop {

  float x;
  float tx;

  float y;
  float ty;
  float leng;

  float lerpVal = .01;

  float rotation;

  void update() {
    rotation = rotation;
    x = lerp(x, tx, lerpVal); //magical lerping function - goes from the initial pos (0) to tpos
    y = lerp(y, ty, lerpVal); //magical lerping from 0 to target
  }

  void render() {
    pushMatrix();
    translate(x, y);
    stroke(255);
    rotate(rotation);
    line(0, 0, leng, 0);
    popMatrix();
  }
}

