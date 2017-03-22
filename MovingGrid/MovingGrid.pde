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
 size(500,500); 
 midX = width/2;
 midY = height/2;
 currentX = midX;
 currentY = midY;
 speed = 12.5;
}
void draw(){
  checkBoundries();
  background(50);
  drawGrid();
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(midX,midY,50,50);
  println(currentX + ", " + currentY);
}
void keyPressed(){
  if(keyCode == UP){
  currentY += speed;
  }
  if(keyCode == DOWN){
  currentY -= speed;
  }
  if(keyCode == LEFT){
  currentX += speed; 
  }
  if(keyCode == RIGHT){
  currentX -= speed;
  }
}
void drawGrid(){
  for(float x = minGridX; x <= maxGridX; x += gridLines){
  line(x+currentX,minGridY+currentY,x+currentX,maxGridY+currentY);
  }
  for(float y = minGridY; y <= maxGridY; y += gridLines){
  line(minGridX+currentX,y+currentY,maxGridX+currentX,y+currentY);
  }
}
void checkBoundries(){
  if(currentX < minGridX){
    currentX = midX;
  }
  if(currentX > maxGridX){
    currentX = midX;
  }
  if(currentY < minGridY){
    currentY = midY;
  }
  if(currentY > maxGridY){
    currentY = midY;
  }  
}