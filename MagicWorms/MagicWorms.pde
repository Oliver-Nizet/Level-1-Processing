void setup(){
  size(1000,800);
  background(250);
}
void draw(){
  float x = random(1000);
  float y = random(800);
  makeMagical();
  fill(random(255),random(255),random(255));
  for(int i = 0; i < 5; i++){
    ellipse(x+(i*10),y+(i*10),20,20);
  }
}
float frequency = .001;
float noiseInterval = PI; 

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}