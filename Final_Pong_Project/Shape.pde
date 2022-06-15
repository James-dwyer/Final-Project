abstract private class Shape {
  //gobal variables
  float x, y,w,h;


  //constructor
  Shape(float X, float Y, float W, float H) {
    this.x = X;
    this.y = Y;
    this.w = W;
    this.h = H;
  }
  abstract public void draw();
  abstract public void starDraw();
};
