int frogX = 200;
float frogY = 372.5;
int frogMove = 35;
int frogSize = 30;
int carSpace = 70;
Car[] cars = new Car[5];
void setup () {
  size(400, 400);
  int startCar = 40;
  cars[0] = new Car(0, startCar, 150, 4);
  startCar += carSpace;
  cars[1] = new Car(0, startCar, 150, 1);
  startCar += carSpace;
  cars[2] = new Car(0, startCar, 150, 3);
  startCar += carSpace;
  cars[3] = new Car(0, startCar, 150, 5);
  startCar += carSpace;
  cars[4] = new Car(00, startCar, 150, 2);
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
  if (frogX > width-frogSize/2) {
    frogX = width-frogSize/2;
  }  
  if (frogX < frogSize/2) {
    frogX = frogSize/2;
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
}