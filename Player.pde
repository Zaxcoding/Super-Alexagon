class Player {
  
  int xPos, yPos;
  float theta;
  
  public Player(int xPos, int yPos) {
   this.xPos = xPos;
   this.yPos = yPos; 
  }
  
  void adjustTheta(float diff) {
   theta += diff; 
  }

  void draw() {
   pushMatrix();
   stroke(0);
   fill(255, 255, 255);
   translate(width/2, height/2); 
   rotate(theta);
   triangle(0, 60, 20, 60, 10, 40);
   popMatrix();
  }
}
