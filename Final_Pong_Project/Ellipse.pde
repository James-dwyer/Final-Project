private class Ellipse extends Circle {
  float yDiameter;
  Ellipse(float x, float y, float diameter, float h, color Color) {
    super(x, y, diameter,h, Color);

    this.yDiameter = h;
  };



  public void draw() {
    noStroke();
    fill(c);
    ellipse(x, y, diameter, yDiameter);
  };
};
