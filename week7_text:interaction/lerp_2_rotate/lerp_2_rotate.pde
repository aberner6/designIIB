
int[] arrayOfInts = {
  7, 3, 8, 4, 7, 7, 4, 10, 6, 6
};

int leftMargin = 60;

int minSize = 5;
int maxSize = 30;

int minData;
int maxData;

float x;
float y = 0;
float ty;

boolean a = false;

void setup() {
  size(600, 500);
  noStroke();
  smooth();
}

void draw() {
  background(255);
  if(a==false){
    firstLayout();
  }
  else{
    ty = height/2;
    secondLayout();    
  }
  if(mousePressed){
    a = true;
  }
}

void update(){
  float lerpVal = .01;
  y = lerp(y, ty, lerpVal); 
  
}

void firstLayout() {
  pushMatrix();
  translate(width/2, height/2);
  fill(255, 150, 10);
  for (int i = 0; i<arrayOfInts.length; i++) {
    float rotation = map(i, 0, arrayOfInts.length, 0, TWO_PI)-HALF_PI;
    rotate(rotation);
    
    y = height/8;
    
    minData = min(arrayOfInts);
    maxData = max(arrayOfInts);
    println(minData+"min");
    println(maxData+"max");
    float r = map(arrayOfInts[i], minData, maxData, minSize, maxSize);   
    ellipse(0, y, r, r);
  }
  popMatrix();
  //changing from one layout to another
}

void secondLayout() {
  update();
  fill(255, 150, 10, 100);
  for (int i = 0; i<arrayOfInts.length; i++) {
    
    x = map(i, 0, arrayOfInts.length-1, leftMargin, width-leftMargin);

    minData = min(arrayOfInts);
    maxData = max(arrayOfInts);
    println(minData+"min");
    println(maxData+"max");
    float r = map(arrayOfInts[i], minData, maxData, minSize, maxSize);   
    ellipse(x, y, r, r);
  }
}





