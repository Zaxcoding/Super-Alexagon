DrawRegion [] regions = new DrawRegion[6];

float x1, y1, x2, y2, x3, y3;
int xIncrement; 
int yIncrement; 

void setup() {
  size(1080, 640);
  doTheSetup();
}

void doTheSetup() {
  
  xIncrement = width/4;
  yIncrement = height/4;
  
  x1 = width/2 - xIncrement;               y1 = height/2 - yIncrement;
  x2 = x1 + xIncrement;       y2 = y1 + 2*yIncrement;
  x3 = x1 + 2*xIncrement;       y3 = y1;
  
  for (int i = 0; i < 6; i++) {
    regions[i] = new DrawRegion(x1, x2, x3, y1, y2, y3);
    
    regions[i].changeColor((int)random(0, 255), (int)random(0, 255), (int)random(0, 255));
    regions[i].adjustRotate(radians(60*i));
  } 
}

void draw() {
  background(0);
  for (int i = 0; i < 6; i++) {
    regions[i].draw();
    regions[i].adjustRotate(radians(1));
  }
}
