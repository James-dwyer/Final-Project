private class Rectangle extends Square {
  float Height;
  color C;
  Rectangle(float x, float y, float xWidth, float h, color C) {
    super(x, y, xWidth,h, C);
    this.Height = h;
    this.C = C;
  };


  public void draw() {
    noStroke();
    fill(C);
    rect(x, y, xWidth, Height);
  };
};
