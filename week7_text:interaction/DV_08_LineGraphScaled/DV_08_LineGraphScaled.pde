color[] palette = { #6A9E90, #43837C, #256A62, #10514A, #013630,
  #758BA6, #4C678A, #2D4A70, #163255, #061C39,
  #FEDEAB, #D3AB6B, #AA803B, #825A19, #573702,
  #FECEAB, #D3976B, #AA6A3B, #824519, #572602};
  

Table cs;
TableRow row;

// extra variables for tracking information about our data
float max = 0;
String state;
float stateWidth;

// variables to keep track of scale
float cw = 450; // Chart Width
// axis lines
float tick1, tick2, tick3;

PFont bh30;



void setup() {
  size(500,300);

  cs = loadTable("APCSAStatePop-98-2013.csv","header");
  
  bh30 = loadFont("bauhaus30.vlw");
  
  noStroke();
  noLoop(); 
}

void draw() {
  background(palette[10]);
  
  // ###########    GET MAXIMUM  ####################
  row = cs.getRow(24); 
  //run through once just to get the max value
  for(int i=1; i < 17; i++) {
    float tests = row.getFloat(i); 
 
    if (tests > max) {
      max = tests;
    }
  }
  
  // ############   GRID SECTION  ####################
  //Draw grid elemends FIRST, so they are behind the acutal content
  textFont(bh30,20);
  stroke(palette[11]);
  fill(palette[12]);
  
  line(20,250,430,250); //Bottom Axis
  text(0,440,260); //Bottom Axis Label
  
  tick1 = map(max/4,0,max,250, 50); // Use map to adjust the scale to the current height of the chart
  line(20,tick1,430, tick1); // 1/4 tick mark
  text(round(max/4),440,tick1+10); // 1/4 tick mark label
  
  tick2 = map(max/2,0,max,250, 50);
  line(20,tick2,430,tick2); // 1/2 tick mark
  text(round(max/2),440,tick2+10); // 1/2 tick mark label
  
  tick3 = map(3*max/4,0,max,250,50);
  line(20,tick3,430,tick3); // 3/4 tick mark
  text(round(3*max/4),440,tick3+10); // 3/4 tick mark label
  
  line(20,50,430,50); // top tick mark
  text(round(max),440,60); // top tick mark label
  
  // ###########  TITLE BAR   ###########################
  state = row.getString("state"); 
  fill(palette[13]);
  
  stateWidth = textWidth(state);
  text(state,(width-stateWidth)/2,290);
  
  // ############# LINE GRAPH  ###########################
  
  fill(palette[11]);
  stroke(palette[14]);
  
  // These are to hold the previous value, for drawing the line
  float lastX=0;
  float lastY=0;
  for(int i=1; i<17; i++) {
    float x = map(i, 1, 17, 20, 430); // Calculate the x place on the grid
    float y = map(row.getFloat(i),0,max,250,50); // Calculate the y height on the grid
    // Don't draw a line for the first time through the loop
    // Since we need to points to draw the line
    if(i>1) {
      line(lastX,lastY,x,y);
      
      // Draw a small circle for the actual point
      ellipse(lastX,lastY,10,10);
    }
    
  
    // Store the x and y values for the next time through
    lastX = x;
    lastY = y;
  }
  ellipse(lastX,lastY,10,10);
  
}
  
