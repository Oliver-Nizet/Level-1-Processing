float minX = 0;
float maxX;
float groundY = 550;
void setup(){
  size(1000,700); 
  maxX = width*5;
}
void draw(){
  line(minX,groundY,maxX,groundY);
}