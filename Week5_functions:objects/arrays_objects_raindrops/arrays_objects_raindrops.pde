

// Example 10-7: Drops one at a time

// An array of drops
Drop[] drops; 

//Drop drops; 

 // New variable to keep track of total number of drops we want to use!
int totalDrops = 0;

void setup() {
  size(400,400);
  smooth();
  background(0);
  drops = new Drop(); //[1000];
}

void draw() {
  background(255);

  // Initialize one drop
//  drops[totalDrops] = new Drop();

  // Increment totalDrops
  totalDrops++ ;

  // If we hit the end of the array
//  if (totalDrops >= drops.length) {
//    totalDrops = 0; //Start over
//  }

  // Move and display drops
  for (int i = 0; i < totalDrops; i++ ) { // New! We no longer move and display all drops, but rather only the “totalDrops” that are currently present in the game.
    println(i);
    drops[i].move();
    drops[i].display();
  }

}
