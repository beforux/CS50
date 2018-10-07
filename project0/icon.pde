
int constant = 75;
float angle = 0.05;
int scalar = 60;
float speed = 0.04;
 
void setup() {
  size(150, 150);
  noStroke();
  smooth();
}

void draw() {
  background(255);
  // Scale the mouseX value from 0 to 640 to a range between 0 and 175
  float c = map(mouseX, 0, width, 0, 120);
  // Scale the mouseX value from 0 to 640 to a range between 40 and 300
  float d = map(mouseX, 0, width, 10, 120);
  stroke(0);
  noFill();
  ellipse(75, 75, d, d);  
 
 // a circle swirling around the big circle
 
float x = constant + sin(angle) * scalar;
float y = constant + cos(angle) * scalar;
fill(0,0,0);
ellipse(x,y,20,20);
angle = angle + speed;
}



