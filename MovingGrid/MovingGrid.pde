float midX;
float midY;
float currentX;
float currentY;
float speed;
float minGridX = -500;
float minGridY = -500;
float maxGridX = 500;
float maxGridY = 500;
float gridLines = 25;
void setup() {
  size(500, 500); 
  midX = width/2;
  midY = height/2;
  currentX = 0;
  currentY = 0;
  speed = 12.5;
}
void draw() {
  checkBoundries();
  background(50);
  drawGrid();
  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(midX, midY, 50, 50);
  println(currentX + ", " + currentY);
}
void keyPressed() {
  if (keyCode == UP) {
    currentY -= speed;
  }
  if (keyCode == DOWN) {
    currentY += speed;
  }
  if (keyCode == LEFT) {
    currentX -= speed;
  }
  if (keyCode == RIGHT) {
    currentX += speed;
  }
}
void drawGrid() {
  float shiftX = currentX -midX;
  float shiftY = currentY -midY;
  for (float x = minGridX; x <= maxGridX; x += gridLines) {
    line(x+shiftX, minGridY+shiftY, x+shiftX, maxGridY+shiftY);
//    line(x, minGridY, x, maxGridY);
  }
  for (float y = minGridY; y <= maxGridY; y += gridLines) {
    line(minGridX-shiftX, y-shiftY, maxGridX-shiftX, y-shiftY);
//    line(minGridX, y, maxGridX, y);
  }
}
void checkBoundries() {
  if (currentX < minGridX) {
    currentX = minGridX;
  }
  if (currentX > maxGridX) {
    currentX = maxGridX;
  }
  if (currentY < minGridY) {
    currentY = minGridY;
  }
  if (currentY > maxGridY) {
    currentY = maxGridY;
  }
}