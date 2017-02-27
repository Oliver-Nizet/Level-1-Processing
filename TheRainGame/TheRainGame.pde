int dropY = 0;
int dropX = 500;
int score = 0;
void setup(){
 size(1000,800);
}
void draw(){
 background(135,206,250);
 fill(65,105,225);
 strokeWeight(3);
 stroke(255);
 ellipse(dropX,dropY,50,50);
 dropY += 10;
 fill(125);
 stroke(0);
 strokeWeight(1);
 rect(mouseX-35,700,70,70);
 rect(mouseX-45,700,90,10);
 if(dropY > 700 ){
 checkCatch();
 dropY = 0;
 dropX = (int) random(width-width,width);
 }
 textSize(50);
 text("Score: " +score,770,50);
}
void checkCatch(){
  if (dropX > mouseX - 35 && dropX < mouseX + 35)
     score++;
  else if (score > 0)
     score = 0;
}