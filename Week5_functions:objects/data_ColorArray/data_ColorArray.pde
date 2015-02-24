// An array stores multiple values of a given data type
// Arrays are always signified by square brackets []
color[] palette = { 
  #6A9E90, #43837C, #256A62, #10514A, #013630,
  #758BA6, #4C678A, #2D4A70, #163255, #061C39,
  #FEDEAB, #D3AB6B, #AA803B, #825A19, #573702,
  #FECEAB, #D3976B, #AA6A3B, #824519, #572602};

void setup() {
  size(500,300);
}

void draw() {
  // You can access a given value in array by putting its INDEX in the square brackets
  // Arrays start counting from 0
  background(palette[1]); // this is the SECOND item in the array: #43837C
  
  fill(palette[4]); //this is the FIFTH item in the array: #013630
  noStroke();
  
  // mouseX and mouseY are variables that return the current X and Y positions of the mouse
  ellipse(mouseX,mouseY,40,40);
}
