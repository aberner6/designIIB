// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-7: Drops one at a time

class Drop {
  float x;
  
  float y;

  float leng;
  
  float rotation;

  void render() {
    //rotation works best with the "push and pop" matrix
    pushMatrix();
    //move to the center of our canvas (info sent over from main tab)
    translate(x, y);
    //white stroke
    stroke(255);
    //rotate by value determined in main tab - according to index number
    rotate(rotation);
    //draw line with length determined by data
    line(0, 0, leng, 0);
    
    //can just draw a circle over the front if you want it to look like a radial
    fill(255);
    noStroke();
    ellipse(0,0,20,20);
    
    popMatrix();
  }
}

