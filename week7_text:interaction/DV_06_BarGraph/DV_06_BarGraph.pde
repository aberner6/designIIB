color[] palette = { #6A9E90, #43837C, #256A62, #10514A, #013630,
  #758BA6, #4C678A, #2D4A70, #163255, #061C39,
  #FEDEAB, #D3AB6B, #AA803B, #825A19, #573702,
  #FECEAB, #D3976B, #AA6A3B, #824519, #572602};
  
// We'll load our data into a special Table object
Table cs;
TableRow row; //this will be to access a particular row


void setup() {
  size(500,300);
  
  // Like with fonts, we need to load the file into our table variable
  // the "header" option tells the Table that the first row is our header info
  cs = loadTable("APCSAStatePop-98-2013.csv","header");
  
  noStroke();
  noLoop(); // This will turn off the looping of draw()
}

void draw() {
  background(palette[10]);
  
  row = cs.getRow(23); // This accesses the 24th row: Arizona.  Try changing the number to see what happens
  
  fill(palette[14]);
  
  // This is a for loop that goes through the columns in that row and plots them
  for(int i=1; i < 17; i++) {
    int tests = row.getInt(i); // this is accessing the column by its Index number, like an array
  
    rect(i*20,250-(tests),10,tests);
  }
}
  
