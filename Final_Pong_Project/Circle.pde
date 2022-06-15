private class Circle extends Shape {
  float diameter;
  color c;

  Circle(float x, float y, float w, float h,color Color) {
    super(x, y,w,h);
    this.diameter = w;
    this.c = Color;
  }

  public void draw() {
    fill(c);
    circle(x, y, diameter);
  };
  void starDraw() {
  };
};
