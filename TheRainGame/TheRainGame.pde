PImage cloud;
int dropY = 0;
int dropX = 500;
int score = 0;
void setup(){
 size(1000,800);
 cloud = loadImage("cloud.png");
}
void draw(){
 background(135,206,250);
 fill(65,105,225);
 strokeWeight(3);
 stroke(255);
 ellipse(dropX,dropY,50,50);
 image(cloud,10,5,100,70);
 image(cloud,120,5,100,70);
 image(cloud,230,5,100,70);
 image(cloud,340,5,100,70);
 image(cloud,450,5,100,70);
 image(cloud,560,5,100,70);
 image(cloud,670,5,100,70);
 image(cloud,780,5,100,70);
 image(cloud,890,5,100,70);
 if(score<15){
 dropY += score+5;
 } else {
  background(135,206,250);
  fill(0);
  textSize(200);
  text("You win!",100,400); 
 }
 fill(125);
 stroke(0);
 strokeWeight(1);
 rect(mouseX-35,700,70,70);
 rect(mouseX-45,700,90,10);
 if(mousePressed){
  dropX = mouseX; 
 }
 if(dropY > 700 ){
 checkCatch();
 dropY = 0;
 dropX = (int) random(width-width,width);
 }
 fill(0);
 textSize(50);
 text("Score: " +score,770,130);
 textSize(30);
 text("Get a score of 15 to win! - Created by Oliver Nizet", 10, 110);
}
void checkCatch(){
  if (dropX > mouseX - 35 && dropX < mouseX + 35)
     score++;
  else if (score > 0)
     score--;
}