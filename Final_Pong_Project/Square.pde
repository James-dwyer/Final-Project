private class Square extends Shape {
  float xWidth;
  color C;
  Square(float x, float y, float Width, color Color) {
    super(x, y);
    this.xWidth = Width;
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
