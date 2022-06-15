final private class Line extends Shape {
  float x2, y2;
  Line(float x, float y, float w, float h) {
    super(x, y,w,h);
    this.x2 = w;
    this.y2 = h;
  };

  final public void draw() {
    stroke(255);
    line(x, y, x2, y2);
  };

  void starDraw() {
  };
};
