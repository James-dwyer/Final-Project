 private class Circle extends Shape{
  float diameter;
  color c;

  Circle(float x, float y, float Diameter, color Color) {
    super(x, y);
    this.diameter = Diameter;
    this.c = Color;
  }

  public void draw() {
    fill(c);
    circle(x, y, diameter);
  };
};
