
// Example 9-2: Initializing the elements of an array one at a time

int[] done = {
  12, 11, 12, 7, 8
};

int[] prod = {
  9, 12, 14, 10, 6
};

void setup() {
  size(500, 500);
  background(255);
  noStroke();
  smooth();
  drawMyData();
}

void draw() {
}

void drawMyData() {
  //bar chart line chart type simple visualization
  //plot every data point from the array of "done"
  //each point has a distinct x position - spaced along the width of the screen
  //the actual data will be shown by the y position of the shape
  for (int i = 0; i<done.length; i++) {
    //    println(done[i]);
//    fill(0, 250, 255);
    //scatterplot
//    noStroke();
//    ellipse(100+i*70, height-done[i]*10, 10, 10);

    //each piece of data is shown by drawing a line from the bottom of the screen to the data point
    //spaced out by index number or which shelf you are
    stroke(0);
    line(100+i*70, height, 100+i*70, height-done[i]*30);
  }
  
  
  for (int i = 0; i<prod.length; i++){
    noStroke();
    fill(255,0,0,100);
    ellipse(100+i*70, height-prod[i]*30/2, 10, 10);
     fill(0,255,0);
    ellipse(100+i*70, height-12*30/2, 10, 10);
    
  }
}

