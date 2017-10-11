int ballX = width/2;
float speed = 5;
boolean lr = true;
void setup(){
  size(1200,800);
}
 void draw(){
  background(0);
  fill(150);
  strokeWeight(5);
  stroke(0,255,0);
  ellipse(ballX,height/2,50,50);
  speed+=0.01;
  if(lr == true){
    ballX-=speed;  
  }
  if(lr == false){
    ballX+=speed;
  }
  if(ballX < 0){
    lr = false; 
  }
  if(ballX > width){
    lr = true; 
  }
}
