int frogX = 200;
float frogY = 400;
int frogMove = 60;
int frogSize = 30;
int carSpace = 60;
Car[] cars = new Car[5];
Config config = new Config();
void setup () {
  size(400, 400);
  int startCar = 70;
  config.setCarX(new int[]{400,0,0,0,0});
  config.setCarY(new int[]{70,130,190,250,310});
  config.setCarSize(new int[]{3600,400,400,400,400});
  config.setCarSpeed(new int []{14,7,7,7,7});
  for(int i = 0; i<5; i++){
    cars[i] = new Car(config.getCarX(i), config.getCarY(i), config.getCarSize(i), config.getCarSpeed(i));   
  }
  /*cars[0] = new Car(400, startCar, 3600, 14);
  startCar += carSpace;
  cars[1] = new Car(0, startCar, 400, 7);
  startCar += carSpace;
  cars[2] = new Car(0, startCar, 400, 7);
  startCar += carSpace;
  cars[3] = new Car(0, startCar, 400, 7);
  startCar += carSpace;
  cars[4] = new Car(0, startCar, 400, 7);*/
}

void draw() {
  background(125);
  int i = 0;
  for (Car c : cars) {
    if (i%2 == 0) {
      c.moveLeft();
    } else {
      c.moveRight();
    }
    i++;
    c.display();
  }
  checkBounds();
  fill(0, 255, 0);
  ellipse(frogX, frogY, frogSize, frogSize);
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      frogY-=frogMove;
    } else if (keyCode == DOWN) {
      frogY+=frogMove;
    } else if (keyCode == RIGHT) {
      frogX+=frogMove;
    } else if (keyCode == LEFT) {
      frogX-=frogMove;
    }
  }
}

void checkBounds() {
  if (frogY > height-frogSize/2) {
    frogY = height-frogSize/2;
  }
  if (frogY < frogSize/2) {
    frogY = frogSize/2;
  }  
  if (frogX > width-frogSize/2-10) {
    frogX = width-frogSize/2-10;
  }  
  if (frogX < frogSize/2+10) {
    frogX = frogSize/2+10;
  }
}

class Car {
  int carX;
  int carY;
  int carSize;
  int carSpeed;

  Car(int x, int y, int size, int speed) {
    carX = x;
    carY = y;
    carSize = size;
    carSpeed = speed;
  }
  void display() {
    fill(255);
    rect(carX, carY, carSize, 30);
  }

  void moveLeft() {
    carX-=carSpeed;
    if (carX + carSize < 0) {
      carX = width;
    }
  }
  void moveRight() {
    carX+=carSpeed;
    if (carX > width) {
      carX = - carSize;
    }
  }
  void getX() {
  }
  void getY() {
  }
  void getSize() {
  }
}
class Config {
  int[] x, y, size, speed;
  void setCarX(int[] values) {
    x=values;
  }
  void setCarY(int[] values) {
    y=values;
  }
  void setCarSize(int[] values) {
    size=values;
  }
  void setCarSpeed(int[] values) {
    speed=values;
  }
  int getCarX(int carNum) {
    return x[carNum];
  }
  int getCarY(int carNum) {
    return y[carNum];
  }
  int getCarSize(int carNum) {
    return size[carNum];
  }
  int getCarSpeed(int carNum) {
    return speed[carNum];
  }
}

