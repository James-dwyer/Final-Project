private class Ellipse extends Circle{
  float yDiameter;
  Ellipse(float x, float y, float diameter, float Diameter, color Color) {
    super(x, y, diameter, Color);

    this.yDiameter = Diameter;
  };



  public void draw() {
     noStroke();
    fill(c);
    ellipse(x, y, diameter, yDiameter);
  };

};
