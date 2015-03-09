color[] palette = { #6A9E90, #43837C, #256A62, #10514A, #013630,
  #758BA6, #4C678A, #2D4A70, #163255, #061C39,
  #FEDEAB, #D3AB6B, #AA803B, #825A19, #573702,
  #FECEAB, #D3976B, #AA6A3B, #824519, #572602};

// Fonts must be stored in a PFont object
// Use Tools --> Create Font to prepare a given font for Processing
PFont cg;

void setup() {
  size(700,300);
  
  //Use loadFont() to load the store font object into your PFont variable
  cg = loadFont("CG-48.vlw");
}

void draw() {
  background(palette[5]);
  
  fill(palette[7]);
  
  // To set the current font, use textFont()
  textFont(cg); 
  
  // The text() function takes a String, and the x, y where the text should begin
  text("We have nothing to fear", 50,50);
  
  // You can change the size of the font by adding a second argument to the textFont()
  // BEWARE!  Processing .vlw files are not vector images, and do not scale well
  // You are better off creating PFont objects for each size you need
  textFont(cg, 30);
  
  fill(palette[8]);
  
  // We can also output information stored in a String object
  String message = "but fear itself.";
  
  text(message, 50, 100);
  
  
  // If you need to get the pixel width of your text, you can use textWidth().
  // This is useful for things like centering text
  String message2 = "And bears.  Fear itself and bears.";
  float w = textWidth(message2);
  
  fill(palette[9]);
  text(message2, (width-w)/2,150); // This will be centered
}
