DrawRegion [] regions = new DrawRegion[6];
DrawRegion [] smallRegions = new DrawRegion[6];

float x1, y1, x2, y2, x3, y3;
float a1, b1, a2, b2, a3, b3;
int xIncrement; 
int yIncrement; 

Player user = new Player(width/2, height/2 - 20);

int rotationAmount = 1;

void setup() {
  size(800, 640);
  doTheSetup();
}

void doTheSetup() {
  
  xIncrement = width/4;
  yIncrement = height/4;
  
  x1 = width/2 - xIncrement;               y1 = height/2 - yIncrement;
  x2 = x1 + xIncrement;       y2 = y1 + 2*yIncrement;
  x3 = x1 + 2*xIncrement;       y3 = y1;
  
  a1 = x1 - 60;               b1 = y1 - 60;
  a2 = a1 + 10;               b2 = b1 + 2*10;
  a3 = a1 + 2*10;             b3 = b1;
  
  for (int i = 0; i < 6; i++) {
    regions[i] = new DrawRegion(x1, x2, x3, y1, y2, y3);
    smallRegions[i] = new DrawRegion(a1, a2, a3, b1, b2, b3);
    
    regions[i].changeColor((int)random(0, 255), (int)random(0, 255), (int)random(0, 255));
    smallRegions[i].changeColor((int)random(0, 255), (int)random(0, 255), (int)random(0, 255));
    
    regions[i].adjustRotate(radians(60*i));
    smallRegions[i].adjustRotate(radians(60*i));
   
  } 
}

void draw() {
  background(0);
    
  for (int i = 0; i < 6; i++) {
    regions[i].draw();
    regions[i].adjustRotate(radians(rotationAmount));
  }
  for (int i = 0; i < 6; i++) {
   // smallRegions[i].draw();
    smallRegions[i].adjustRotate(radians(rotationAmount));  
  }
  user.draw();
}

void keyPressed() {
 if (keyCode == LEFT) {
   user.adjustTheta(radians(-6*rotationAmount));
 }
 if (keyCode == RIGHT) {
   user.adjustTheta(radians(6*rotationAmount));
 }
}
