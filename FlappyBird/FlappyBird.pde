import ddf.minim.*;
Minim minim;
AudioSample sound;
int x = 200;
int y = 500;
double birdYVelocity = 0;
double gravity = 0.5;
double maxVelocity = 10;
int pipeX = 1000;
int top = 400;
int bottom = 400;
int score = 0;
void setup(){
  size(1000,1000);
  minim = new Minim(this);
  sound = minim.loadSample("patrick.wav");
}
void draw(){
  background(0,0,255);
  fill(255,255,0);
  ellipse(x,y,50,50);
  fill(0,255,0);
  rect(pipeX,0,100,top);
  rect(pipeX,top+200,100,bottom);
  textSize(100);
  fill(255);
  text("Score: "+score,550,100);
  birdYVelocity+=gravity;
  if(birdYVelocity > maxVelocity){
    birdYVelocity = maxVelocity;
  }
  y+=birdYVelocity;
  pipeX-=5;
  if(pipeX==0){
    pipeX=1000;
    top = (int) random(100,700);
    bottom = 1000-top-200;
    score++;
    sound.trigger();
  }
  if(y>=1000||y<=0){
    System.exit(0); 
  }
  boolean intersected = intersectsTop(x, y, pipeX, top, 100); 
  if(intersected){
    System.exit(0);
  }
  intersected = intersectsBottom(x, y, pipeX, top+200, 100); 
  if(intersected){
    System.exit(0);
  }
    
}
void mousePressed(){
  birdYVelocity-=13;
}
boolean intersectsTop(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY < paddleY + 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}
boolean intersectsBottom(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}