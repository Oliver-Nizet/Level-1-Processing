float x = 300;
float y = 180;
float w = 60;
float h = 60;
float x2 = 180;
float y2 = 180;
float eyeSize = 16;

void setup() {
  size(480, 270);
}

void draw() {
  //1.  Draw a white background
  background(255);
  //2. create a color variable. (ask your teacher or check processing.org/reference
  color green = color(0,255,0);
  color blue = color(0,0,255);
  //2. call the method to draw your Zoog. Hint: you will need your color variable.
  drawZoog(blue);
  drawZoog2(green);
  //3. call the method to Jiggle your Zoog
  jiggleZoog(10);
  jiggleZoog2(10);
//bonus: Only jiggle the zoog when the mouse is pressed  
}
void jiggleZoog2(int speed) {
  // Change the x and y location of Zoog randomly
  x2 = x2 + random(-.1, .1)*speed;
  y2 = y2 + random(-.1, .1)*speed;
  // Constrain Zoog to window
  x2 = constrain(x2, 0, width);
  y2 = constrain(y2, 0, height);
}

void jiggleZoog(int speed) {
  // Change the x and y location of Zoog randomly
  x = x + random(-.1, .1)*speed;
  y = y + random(-.1, .1)*speed;
  // Constrain Zoog to window
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
}

void drawZoog2(color eyeColor) {
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  // Draw Zoog's arms with a for loop
  for (float i = y2 - h/3; i < y2 + h/2; i += 10) {
    stroke(0);
    line(x2 - w/4, i, x2 + w/4, i);
  }
  // Draw Zoog's body
  stroke(0);
  fill(175);
  rect(x2, y2, w/6, h);
  // Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(x2, y2 - h, w, h);
  // Draw Zoog's eyes
  fill(eyeColor);
  ellipse(x2 - w/3, y2 - h, eyeSize, eyeSize*2);
  ellipse(x2 + w/3, y2 - h, eyeSize, eyeSize*2);
  // Draw Zoog's legs
  stroke(0);
  line(x2 - w/12, y2 + h/2, x2 - w/4, y2 + h/2 + 10);
  line(x2 + w/12, y2 + h/2, x2 + w/4, y2 + h/2 + 10);
}
void drawZoog(color eyeColor) {
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  // Draw Zoog's arms with a for loop
  for (float i = y - h/3; i < y + h/2; i += 10) {
    stroke(0);
    line(x - w/4, i, x + w/4, i);
  }
  // Draw Zoog's body
  stroke(0);
  fill(175);
  rect(x, y, w/6, h);
  // Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(x, y - h, w, h);
  // Draw Zoog's eyes
  fill(eyeColor);
  ellipse(x - w/3, y - h, eyeSize, eyeSize*2);
  ellipse(x + w/3, y - h, eyeSize, eyeSize*2);
  // Draw Zoog's legs
  stroke(0);
  line(x - w/12, y + h/2, x - w/4, y + h/2 + 10);
  line(x + w/12, y + h/2, x + w/4, y + h/2 + 10);
}