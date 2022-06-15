private class Square extends Shape {
  float xWidth;
  color C;
  Square(float x, float y, float w, float h,color Color) {
    super(x, y,w,h);
    this.xWidth = w;
    this.C = Color;
  };

  void draw() {
    noStroke();
    fill(C);
    square(x, y, xWidth);
  };

  void starDraw() {
  };
};
