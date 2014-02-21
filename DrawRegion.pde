class DrawRegion {

  float x1, x2, x3, y1, y2, y3;
  int WIDTH, HEIGHT;
  float theta;
  int r, g, b;
  
  ArrayList<Barrier> barriers = new ArrayList<Barrier>();
  
  public DrawRegion(float x1, float x2, float x3, float y1, float y2, float y3) {
    this.x1 = x1;
    this.x2 = x2;
    this.x3 = x3;
    this.y1 = y1;
    this.y2 = y2;
    this.y3 = y3;    
  }
  
  void adjustRotate(float diff) {
    theta += diff;
  }
  
  void changeColor(int r, int g, int b) {
   if (r != -1) {
    this.r = r; 
   }
   if (g != -1) {
    this.g = g; 
   }
   if (b != -1) {
    this.b = b; 
   }
  }
  
  void draw() {
   pushMatrix();
   stroke(0);
   fill(r, g, b);
   translate(2*x1, 2*y1); 
   rotate(theta);
   triangle(0, 0, x2 - 350, y2, x3 + 350, y3);
   popMatrix();
  }

}


